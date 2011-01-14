package BCVTB;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.FileInputStream;
import java.io.BufferedReader;
import java.io.BufferedInputStream;
import java.io.InputStreamReader;
import java.util.Properties;
import java.util.Map;
import java.util.TreeMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.net.URL;

//import ptolemy.vergil.VergilApplication;


public class Launcher{

    /** Constructor */
    public Launcher(){
	pb = new ProcessBuilder();
	prop = pb.environment();
    }


    /** Set process builder command 
     *
     *@param args the arguments that are passed to the main method
     *@exception UnsupportedOperationException if non-valid arguments are passed
     */
    void setCommand(String[] args)
	throws UnsupportedOperationException{
	// Search for the -command flag
	ArrayList<String> comLis = new ArrayList<String>();
	ArrayList<String> comArg = new ArrayList<String>();
	boolean getCommandFlags = false;
	String ptFile = null;
	boolean run     = false;
	boolean console = false;
	int iStart = 0;

	// Check if first argument is -command
	if (args.length > 0 && args[0].equals("-command")){
	    // Found the command switch.
	    if ( args.length == 1 ){
		String em = "Error: The flag '-command' must be followed by at least one argument."
		    + "The command line is '" + args[0] + "'.";
		throw new UnsupportedOperationException(em);
	    }
	    else{ // Got a -command with at least one more argument. Retrieve it.
		comLis.add(args[1]);
		// Set flags so we scan for options of the command
		getCommandFlags = true;
		iStart = 2;
	    }
	}
	
	// Retrieve other arguments if presents
	for (int i = iStart; i < args.length; i++){
	    if(args[i].equals("-file")){ //----- -file
		// got runtime file
	        if ( i == args.length -1 ){
		    String em = "Error: The flag '-file' must be followed by at least one argument."
			+ "The command line is'";
		    for(int j = 0; j < args.length; j++)
			em += ' ' + args[j];
		    em += "'.";
		    throw new UnsupportedOperationException(em);
		}
		else{ // Got a -file with at least one more argument. Retrieve it.
		    getCommandFlags = false;
		}
	    }else if(args[i].equals("-console")){
		// run it
		console = true;
		getCommandFlags = false;
	    }else if(args[i].equals("-run")){
		// run it
		run = true;
		getCommandFlags = false;
	    }else if(args[i].equals("-diagnostics")){
		// Dump system variables
		_dumpProperties(prop);
	    }
	    else if(getCommandFlags){
		// We are still scanning for command flags.
		// This is a command flag
		comArg.add(args[i]);
	    }else{
		// Retrieve the ptFile
		ptFile = args[i];
		// We may have more flags, such as -finalTime 3600
		getCommandFlags = true;
	    }
	}
	// Set up the arguments of the process builder
	if ( comLis.size() == 0 ){
	    // Did not get any -command. Set the commmand that starts ptolemy
	    comLis.add("java");
	    if ( console ){
		// ptolemy.moml.MoMLSimpleApplication does not set the isHeadless
		// property to false. Hence, we set it here so that no windows
		// are being opened. This environment flag is checked in 
		// Simulator and in SystemCommand
		comLis.add("-Dptolemy.ptII.isHeadless=true");
		comLis.add("ptolemy.moml.MoMLSimpleApplication");
	    }
	    else if ( run ){
		comLis.add("ptolemy.actor.gui.PtExecuteApplication");
		comLis.add("-bcvtb");
	    }
	    else{
		comLis.add("ptolemy.vergil.VergilApplication");
		comLis.add("-bcvtb");
	    }
	    if ( ptFile != null )
		comLis.add(ptFile);
	}
	// Add arguments to command line
	for ( Iterator<String> iter = comArg.iterator(); iter.hasNext(); )
	    comLis.add( iter.next() );
	// Set commands to process builder
	pb.command(comLis);
    }
    

    /** Detect system variables 
     *
     *@exception Exception If the operating system is not supported.
     */
    protected void detectSystemVariables() 
	throws Exception{
	// Set operating system
	//
	final String osNam = System.getProperty("os.name").toLowerCase();
	if (osNam.indexOf("windows") > -1){
	    os = osName.WINDOWS;
	    prop.put("BCVTB_OS", "windows");
	}
	else if (osNam.indexOf("mac") > -1){
	    os = osName.MAC;
	    prop.put("BCVTB_OS", "mac");
	}
	else if (osNam.indexOf("linux") > -1){
	    os = osName.LINUX;
	    prop.put("BCVTB_OS", "linux");
	}
	else
	    throw new Exception("Unsupported operating system " + 
				System.getProperty("os.name"));
    }

    /** Gets the root directory of the BCVTB
     *
     *@exception FileNotFoundException if the root directory cannot be determined
     */
    protected String getBCVTBRoot() 
	throws FileNotFoundException {
	// getResource uses / as the path separator, even on Windows
	final String localPS = "/"; 
	String dir = Launcher.class.getResource("Launcher.class").toString();
	final String start = ( os == osName.WINDOWS ) ? "file:/" : "file:";
	dir = dir.substring(dir.indexOf(start) + start.length(), 
			     dir.indexOf("BCVTB.jar"));
	// cut last file separator if string ends with a file separator
	if (dir.endsWith(localPS))
	    dir = new String(dir.substring(0, dir.length()-1));
	// If a directory has spaces in its name, then they show up
	// as %20. This will cause File(..).exists() to return false.
	// The next line fixes this problem.
	dir = _replaceAll(dir, "%20", " ");
	final String libPT = localPS + "lib" + localPS + "ptII";
	while ( dir.indexOf(localPS) > -1 ){
	    final String fname = dir + libPT;
	    if (new File(fname).exists()){
		break;
	    }
	    // Move up one entry in directory hierarchy
	    dir = dir.substring(0, dir.lastIndexOf(localPS, dir.length()-1));
	}
	if (dir.lastIndexOf(localPS) < 2){
	    final String em = "Error: Could not determine BCVTB root directory." + LS
		+ "Expected to find a directory that contains " + libPT + LS
		+ "Did you move the file BCVTB.jar?";
	    throw new FileNotFoundException(em);
	}
	if (os == osName.WINDOWS)
	    dir = dir.replace("/", "\\");
	return dir;
    }

    private static void _dumpProperties(Map<String, String> p){
	System.err.println("********** Environment variables:");
	TreeMap<String, String> tm = new TreeMap<String, String>();
	tm.putAll(p);
	
        Iterator it = tm.entrySet().iterator();
	while (it.hasNext()) {
	    Map.Entry pairs = (Map.Entry)it.next();
	    System.out.println(pairs.getKey() + " = " + pairs.getValue());
	}
	System.err.println("*********************************");
    }


    
    /** Returns true if the variable is set 
     *
     *@param var the return value from System.getProperty
     *@return <code>true</code> if the variable is set, <code>false</code> otherwise.
     */
    boolean _isSet(String var){
	boolean ret = (var != null && var.trim().length() > 0);
	return ret;
    }

    /* Adds the variable to the system properties.
     *
     *  If such a variable already exists, then the value is added to the
     *  end of the variable name.
     *
     *@param name name of the variable
     *@param value value of the variable

    protected void addSystemVariable(final String name, 
				     final String value){

	    // Get the current value
	    final String curVal = prop.get(name);
	    String valTru;
	    if (value.indexOf("+") == 0) // The string is of the form +abc
		valTru = value.substring(1, value.length()-1);
	    else // The string is of the form "+abc"
		valTru = '\"' + value.substring(2, value.length()-1);
	    if ( ! _isSet(curVal) ){ // not set
		prop.put(name, valTru);
	    }
	    else{
		final char delimiter = 
		    (os == osName.MAC || os == osName.LINUX) ?
		    ':' : ';';
		prop.put(name, curVal + delimiter + valTru);
	}
    }
     */
    /** Sets the variable to the system properties.
     *
     *  If such a variable already exists, it will be overwritten
     *
     *@param name name of the variable
     *@param value value of the variable
     */
    protected void setSystemVariable(final String name, 
				     final String value){
	// Check if it already exists and whether it needs to be
	// substituted in the value
	prop.put(name, value);
    }
    
    private static String _replaceAll(final String s, final String pattern, final String value){
	// To avoid an infinite loop, we return the string if the value contains the
	// pattern
	if (value.contains(pattern))
	    return s; 
	String ret = new String(s);
	int i = ret.indexOf(pattern);
	while(i > -1 ){
	    ret = new String(ret.substring(0, i) + value + ret.substring(i+pattern.length()));
	    i = ret.indexOf(pattern);
	}
	return ret;
    }
    
    private static String _replaceAllSystemVariables(final String s, 
					      final String pattern,
					      final String value){
	String ret = s;
	final String osNam = System.getProperty("os.name").toLowerCase();
	if (osNam.indexOf("windows") > -1) // have windows
	    ret = _replaceAll(ret, "%" + pattern + "%"     , value);
	else{
	    if (! pattern.equals(value)){
		ret = _replaceAll(ret, "$" + pattern       , value);
		ret = _replaceAll(ret, "${" + pattern + "}", value);
	    }
	}
	return ret;
    }

    /** Resolves all references to environment variables in the
     *  properties
     */
    protected void resolveEnvironmentVariable(){
	Iterator itOut = prop.entrySet().iterator();
	while (itOut.hasNext()) {
	    Map.Entry pairsOut = (Map.Entry)itOut.next();
	    // value of outer pair
	    String keyOut = (String)pairsOut.getKey();
	    String valOut = (String)pairsOut.getValue();
	    // iterate through all key/value maps
	    Iterator itIn = prop.entrySet().iterator();
	    while (itIn.hasNext()) {
		Map.Entry pairsIn = (Map.Entry)itIn.next();
		final String keyIn = (String)pairsIn.getKey();
		final String valIn = (String)pairsIn.getValue();
		valOut = _replaceAllSystemVariables(valOut, keyIn, valIn);
	    }
	    prop.put(keyOut, valOut);
	}
    }

    /** Resolves all references to existing environment variables in the user properties
     *
     *@param prop the properties of the process builder
     *@param userProp the user properties.
     */
    private static void _replaceEnvironmentVariables(final Map<String,String> p,
						     Properties userProp){
	Iterator it = p.entrySet().iterator();
	while (it.hasNext()) {
	    Map.Entry pairs = (Map.Entry)it.next();
	    final String key = (String)pairs.getKey();
	    final String val = (String)pairs.getValue();

	    Iterator itUsePro = userProp.entrySet().iterator();
	    while (itUsePro.hasNext()){
		Map.Entry pairUsePro = (Map.Entry)itUsePro.next();
		final String keyUsePro = (String)pairUsePro.getKey();
		final String valUsePro = (String)pairUsePro.getValue();
		userProp.setProperty(keyUsePro, 
				     _replaceAllSystemVariables(valUsePro, key, val));
	    }
	}
    }

    /** Resolves all references within the user properties
     *
     *@param userProp the user properties.
     */
    private void _resolveReferences(Properties userProp){
	Iterator it = userProp.entrySet().iterator();
	while (it.hasNext()) {
	    Map.Entry pairs = (Map.Entry)it.next();
	    final String key = (String)pairs.getKey();
	    final String val = (String)pairs.getValue();
	    
	    Iterator itUsePro = userProp.entrySet().iterator();
	    while (itUsePro.hasNext()){
		Map.Entry pairUsePro = (Map.Entry)itUsePro.next();
		final String keyUsePro = (String)pairUsePro.getKey();
		final String valUsePro = (String)pairUsePro.getValue();
		userProp.setProperty(keyUsePro, 
				     _replaceAllSystemVariables(valUsePro, key, val));
	    }
	}
    }


    /** Initializes the process builder.
     *
     *@exception FileNotFoundException if the root directory cannot be determined
     *@exception Exception if the operating system is not supported
     */
    protected void initializeProcessBuilder()
	throws FileNotFoundException, Exception{
	///////////////////////////////////////////////////
	// Get root directory of BCVTB
	final String root = getBCVTBRoot();
	prop.put("BCVTB_HOME", root);
	///////////////////////////////////////////////////
	// Set PTII if it is not already set
	String ptIIDir = prop.get("PTII");
	if ( ! _isSet(ptIIDir) ){ // is not set
	    ptIIDir = root + PS + "lib" + PS + "ptII";
	    prop.put("PTII", ptIIDir);
	}
	///////////////////////////////////////////////////
	// Read user property file
	String userPropertyFile;
	switch (os) {
	case LINUX:
	    userPropertyFile = root + "/bin/systemVariables-linux.properties";
	    break;
	case MAC:
	    userPropertyFile = root + "/bin/systemVariables-mac.properties";
	    break;
	case WINDOWS:
	    userPropertyFile = root + "\\bin\\systemVariables-windows.properties";
	    break;
	default:
	    final String em = "Unsupported operating system when trying to get system property file." +
		LS + "os = " + os;
	    throw new Exception(em);
	}
	Properties userProp = new Properties();
	try{
	    userProp.loadFromXML(new FileInputStream(userPropertyFile));
	}
	catch(IOException e){
	    throw new IOException("IOException when reading user property file." + LS +
				  e.getMessage());
	}
	
	///////////////////////////////////////////////////
	// Set user properties to system properties
	// Resolve references within user-defined properties
	_resolveReferences(userProp);
	//Replace references to existing system properties
	_replaceEnvironmentVariables(prop, userProp);

	Iterator itu = userProp.entrySet().iterator();
	while (itu.hasNext()) {
	    Map.Entry pairs = (Map.Entry)itu.next();
	    final String key = (String)pairs.getKey();
	    final String val = ((String)pairs.getValue()).trim();
	    setSystemVariable(key, val);
	}

	////////////////////////////////////////////////////
	// Resolve all references to environment variables
	resolveEnvironmentVariable();
    }

    /** Starts the process 
     *
     *@return the exit value of the process. By convention, 0 indicates normal termination
     */
    protected int startProcess(){
	int retVal = 1;
        try {
	    Process p = pb.redirectErrorStream(true).start();
	    writeProcessOutput(p);
	    //	    _dumpProperties(prop);
	    //	    ptolemy.vergil.VergilApplication v;
	    //	    v = new ptolemy.vergil.VergilApplication(null);
	    retVal = p.waitFor();
        }
        catch (IOException e) {
            System.err.println(e.getMessage());
        }
	catch (InterruptedException e) {
	    System.err.println(e.getMessage());
	}
	catch (Exception e) {
	    System.err.println(e.getMessage());
	}
	return retVal;
    }


    static void writeProcessOutput(Process process) throws Exception{
	InputStreamReader tempReader = new InputStreamReader(
							     new BufferedInputStream(process.getInputStream()));
	BufferedReader reader = new BufferedReader(tempReader);
	while (true){
	    String line = reader.readLine();
	    if (line == null)
		break;
	    System.out.println(line);
	}		
    }

    /** Shows a throwable
     *
     *@param t the throwable to show
     */
    static void showThrowable(Throwable t){
	System.err.println(t.getMessage());
	t.printStackTrace();
	
	javax.swing.JOptionPane.showMessageDialog(null,
						  t.getMessage(),
						  "BCVTB Error",
						  javax.swing.JOptionPane.ERROR_MESSAGE);
    }

    /** Main method
     */
    public static void main(String[] args){
	int retVal = 1; // will set to zero if process runs with no error
	try{
	    Launcher l = new Launcher();
	    l.detectSystemVariables();
	    l.initializeProcessBuilder();
	    l.setCommand(args);
	    retVal = l.startProcess();
	}
	catch(NoClassDefFoundError e){
	    showThrowable(e);
	    System.exit(1);
	}
	catch(Exception e){
	    showThrowable(e);
	    System.exit(1);
	}
	System.exit(retVal);
    }

    /** The properties of the process builder */
     Map<String,String> prop;

    /** The path variable */
    protected String originalPath;
    
    /** The process builder to start Ptolemy */
    protected ProcessBuilder pb;

    /** File separator */
    protected static final String PS = System.getProperty("file.separator");

    /** Line separator */
    protected static final String LS = System.getProperty("line.separator");

    /** Enumeration for the operating system */
    enum osName {WINDOWS, LINUX, MAC}

    /** The operating system */
    protected osName os;
}
/********************************************************************
Copyright Notice
----------------

Building Controls Virtual Test Bed (BCVTB) Copyright (c) 2008-2009, The
Regents of the University of California, through Lawrence Berkeley
National Laboratory (subject to receipt of any required approvals from
the U.S. Dept. of Energy). All rights reserved.

If you have questions about your rights to use or distribute this
software, please contact Berkeley Lab's Technology Transfer Department
at TTD@lbl.gov

NOTICE.  This software was developed under partial funding from the U.S.
Department of Energy.  As such, the U.S. Government has been granted for
itself and others acting on its behalf a paid-up, nonexclusive,
irrevocable, worldwide license in the Software to reproduce, prepare
derivative works, and perform publicly and display publicly.  Beginning
five (5) years after the date permission to assert copyright is obtained
from the U.S. Department of Energy, and subject to any subsequent five
(5) year renewals, the U.S. Government is granted for itself and others
acting on its behalf a paid-up, nonexclusive, irrevocable, worldwide
license in the Software to reproduce, prepare derivative works,
distribute copies to the public, perform publicly and display publicly,
and to permit others to do so.


Modified BSD License agreement
------------------------------

Building Controls Virtual Test Bed (BCVTB) Copyright (c) 2008-2009, The
Regents of the University of California, through Lawrence Berkeley
National Laboratory (subject to receipt of any required approvals from
the U.S. Dept. of Energy).  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

   1. Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
   2. Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in
      the documentation and/or other materials provided with the
      distribution.
   3. Neither the name of the University of California, Lawrence
      Berkeley National Laboratory, U.S. Dept. of Energy nor the names
      of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission. 

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

You are under no obligation whatsoever to provide any bug fixes,
patches, or upgrades to the features, functionality or performance of
the source code ("Enhancements") to anyone; however, if you choose to
make your Enhancements available either publicly, or directly to
Lawrence Berkeley National Laboratory, without imposing a separate
written license agreement for such Enhancements, then you hereby grant
the following license: a non-exclusive, royalty-free perpetual license
to install, use, modify, prepare derivative works, incorporate into
other computer software, distribute, and sublicense such enhancements or
derivative works thereof, in binary and source code form.

********************************************************************
*/

