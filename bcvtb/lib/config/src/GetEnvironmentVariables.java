import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Map;

/** Class to create a file that contains the environment variables for Windows.
 *  This class is only used for Windows.
 */


public class GetEnvironmentVariables 
{
    /** Main method.
     *
     * Initializes all variables used in this class,
     * and then generate the batch file to set environment variables 
     * for Visual Studio, Intel Fortran Compiler, Apache Ant, 
     * if any of them is available.
     *
     * @param args No arguments are used by this method.
     * @throws IOException
     */
    public static void main(String[] args)
	throws IOException
    {
	GetEnvironmentVariables myEnv = new GetEnvironmentVariables();
	myEnv.generateBatchFile();
    }
    
    /** Gets and initializes all variables, and guesses the environment variables for Visual Studio,
     * Intel Fortran Compiler and Apache Ant.
     */
    public GetEnvironmentVariables(){
	VSBAT = null;
	IFORTBAT = null;
	ANTDIR = null;
	//Set guess values to be null, they will be over written by guessVariables() method;
	VSBATGuess = null;
	IFORTBATGuess = null;
	ANTDIRGuess = null;
	
	// Set Example values based on system environment variables.
	VSBATExample    = "C:\\Program Files\\Microsoft Visual Studio 9.0\\Common7\\Tools\\vsvars32.bat";
	ANTDIRExample   = "C:\\Program Files\\apache-ant-1.7.1";
	IFORTBATExample = "C:\\Program Files\\Intel\\Compiler\\11.0\\072\\fortran\\Bin\\ifortvars.bat";
	guessVariables();
    }

    /**
     * Generates the batch file, which will contain the commands to set 
     * the environment variables for Visual Studio, Intel Fortran 
     * and Apache Ant.
     *
     * @throws IOException
     */
    public void generateBatchFile() 
	throws IOException{
	final String fileName = "env-var.bat";
	VSBAT = checkOneVar(VSBATGuess, 
			    "Visual Studio", 
			    VSBATExample, 
			    "bat" );  
	IFORTBAT = checkOneVar(IFORTBATGuess, 
			       "Fortran Compiler", 
			       IFORTBATExample, 
			       "bat");
	ANTDIR = checkOneVar(ANTDIRGuess, 
			     "Apache Ant", 
			     ANTDIRExample, 
			     null);
	
	FileWriter fw = new FileWriter(fileName);
	BufferedWriter bw = new BufferedWriter(fw);
	
	if (VSBAT != null)
	    bw.write("@set BCVTB_VS_BAT=" + VSBAT + LS);
	else 
	    bw.write("rem @set BCVTB_VS_BAT=" + LS);
	
	if (IFORTBAT != null)
	    bw.write("@set BCVTB_IFORT_BAT=" + IFORTBAT  + LS);
	else 
	    bw.write("rem @set BCVTB_IFORT_BAT=" + LS);
	
	if (ANTDIR != null) 
	    bw.write("@set ANT_HOME=" + ANTDIR + LS);
	else 
	    bw.write("rem @set ANT_HOME="  + LS);
	bw.close();
	fw.close();
    }
    
    
    /** Guesses the locations of the environment variables for Visual Studio, 
     *  Intel Fortran Compiler and Apache Ant.
     */
    protected void guessVariables(){
	Map<String, String> envvars = System.getenv();
	for(Map.Entry<String, String> entry : envvars.entrySet()){
	    String name = entry.getKey();
	    if(name.startsWith("VS") && name.contains("COMNTOOLS"))
		VSBATGuess = entry.getValue() + "vsvars32.bat";
	    else if	(name.startsWith("ANT_HOME"))
		ANTDIRGuess = entry.getValue();
	    else if (name.startsWith("IFORT_COMPILER")){
		String s = name.substring(14);
		Float v = new Float(0);
		try{
		    v = Float.parseFloat(s); 
		}catch(NumberFormatException e){
		    v = new Float(0);
		}
		findIFORTBAT(entry.getValue(), v.intValue());
	    }
	}
    }

    /** Finds the Fortran installation and sets the value for <code>IFORTBATGuess</code>.
     *
     * @param path Intel Fortran Compiler install path
     * @param v Version of the Intel Fortran Compiler
     */
    protected void findIFORTBAT(String path, int v){
	if( v <= 10) 
	    IFORTBATGuess = path + "\\IA32\\Bin\\IFortVars.bat";
	else 
	    IFORTBATGuess = path + "\\Bin\\IA32\\ifortvars_ia32.bat";
    }
    
    /** Checks if a file exists and has a specified extension
     *
     *@param file the file to check
     *@param ext  the file extension, or <code>null</code> if the extensions should not be checked
     *@return <code>true</code> if the file exists and has the specified 
     *        extension, <code>false</code> otherwise
     */
    protected boolean exists(File file, String ext){
        if ( ext == null )
            return file.exists();
        else
            return (file.exists() && file.toString().endsWith(ext));
    }
    
    /** Checks if <code>path</code> exists. If it does not exist, 
     * it asks the user to enter the correct path
     * or the character 'N' if the compiler is not available.
     *
     * @param path the file name to check
     * @param comp the program name
     * @param msg an example value
     * @param ext the file extension
     * @return the correct path or null if not available.
     */
    protected String checkOneVar(String path, String comp, String msg, String ext){
    	String newPath = path;
    	if ( newPath != null && exists(new File(newPath), ext) )
    	    return newPath;
    	System.out.println("Did not find environment variable for " + comp + ".");
    	while(true){
    	    System.out.println("If " + comp + " is installed, enter the file name." + LS +
    			       "An example would be : '" + msg + "'" + LS +
    			       "Enter 'N' if not installed, or" + LS +
    			       "type its path and name followed by the return key.");
    	    newPath = getUserInput();
    	    if( newPath.equalsIgnoreCase("N") ){
    	        newPath = null; 
    	        break;
    	    }
    	    if( exists(new File(newPath), ext) )
    	        break;
    	    else {
    	        System.out.print("Input is not a valid file");
    		if (ext==null)
    		    System.out.println(".");
    		else
    		    System.out.println("with extension '" + ext + "'.");
    	    }
    	}
    	return newPath;
    }
    
    /** Reads one line of the user input.
     *
     * @return the user input 
     */
    protected static String getUserInput(){
	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	try{
	    return br.readLine();
	}
	catch(IOException e){
	    System.err.println(e);
	}
	return "IOException";
    }
    
    /** System dependent line separator */
    private final static String LS = System.getProperty("line.separator");
    
    /** Guessed value for environment variable based on system properties */
    private String VSBATGuess;
    /** Guessed value for environment variable based on system properties */
    private String IFORTBATGuess;
    /** Guessed value for environment variable based on system properties */
    private String ANTDIRGuess;
    
    /** Example value for environment variable */
    private String VSBATExample;
    /** Example value for environment variable */
    private String IFORTBATExample;
    /** Example value for environment variable */
    private String ANTDIRExample;
    
    /** Final value for environment variable based on system properties or user input */
    private String VSBAT;
    /** Final value for environment variable based on system properties or user input */
    private String IFORTBAT;
    /** Final value for environment variable based on system properties or user input */
    private String ANTDIR;
}

/*
********************************************************************
Copyright Notice
----------------

Building Controls Virtual Test Bed (BCVTB) Copyright (c) 2008, The
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

Building Controls Virtual Test Bed (BCVTB) Copyright (c) 2008, The
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

