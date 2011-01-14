package LBNLActors;
import LBNLActors.net.Server;
import LBNLActors.util.XMLWriter;
import LBNLActors.util.ClientProcess;

import java.io.UnsupportedEncodingException;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.ArrayList;
import java.util.StringTokenizer;

import ptolemy.data.expr.FileParameter;
import ptolemy.data.BooleanToken;
import ptolemy.actor.TypedAtomicActor;
import ptolemy.actor.TypedIOPort;
import ptolemy.data.ArrayToken;
import ptolemy.data.DoubleToken;
import ptolemy.data.ScalarToken;
import ptolemy.data.MatrixToken;
import ptolemy.data.DoubleMatrixToken;
import ptolemy.data.Token;
import ptolemy.data.expr.Parameter;
import ptolemy.data.type.BaseType;
import ptolemy.data.type.ArrayType;
import ptolemy.kernel.CompositeEntity;
import ptolemy.kernel.util.IllegalActionException;
import ptolemy.kernel.util.NameDuplicationException;
import ptolemy.kernel.util.Settable;
import ptolemy.domains.sdf.lib.SDFTransformer;

/**
 * Actor that calls a simulation program of a dynamic system 
 * that is coupled to Ptolemy II
 *
 * @author Michael Wetter
 * @version 1.0
 * @since BCVTB 0.1
 *
 */
public class Simulator extends SDFTransformer {

    /** Construct an actor with the given container and name.
     *  @param container The container.
     *  @param name The name of this actor.
     *  @exception IllegalActionException If the actor cannot be contained
     *   by the proposed container.
     *  @exception NameDuplicationException If the container already has an
     *   actor with this name.
     */
    public Simulator(CompositeEntity container, String name)
            throws NameDuplicationException, IllegalActionException {
        super(container, name);

	input.setTypeEquals(BaseType.DOUBLE_MATRIX);
	input.setMultiport(false);
	output.setTypeEquals(BaseType.DOUBLE_MATRIX);
	output.setMultiport(false);

	command = new FileParameter(this, "programName");
	new Parameter(command, "allowFiles",       BooleanToken.TRUE);
	new Parameter(command, "allowDirectories", BooleanToken.FALSE);


	arguments = new Parameter(this, "programArguments");
	arguments.setTypeEquals(BaseType.STRING);
	arguments.setExpression("");

	workingDirectory = new FileParameter(this, "workingDirectory");
	new Parameter(workingDirectory, "allowFiles", BooleanToken.FALSE);
	new Parameter(workingDirectory, "allowDirectories", BooleanToken.TRUE);
	workingDirectory.setExpression(".");

        simLogFil = new FileParameter(this, "simulationLogFile");
	simLogFil.setTypeEquals(BaseType.STRING);
	simLogFil.setExpression("simulation.log");
	new Parameter(simLogFil, "allowFiles",       BooleanToken.TRUE);
	new Parameter(simLogFil, "allowDirectories", BooleanToken.FALSE);

	timOut = new Parameter(this, "socketTimeout [milliseconds]");
	timOut.setExpression("5000");
	timOut.setTypeEquals(BaseType.INT);

	// expert settings
	portNumber = new Parameter(this, "socketPortNumber (used if non-negative)");
	portNumber.setExpression("-1");
	portNumber.setTypeEquals(BaseType.INT);
	portNumber.setVisibility(Settable.EXPERT);

        socConFil = new FileParameter(this, "socketConfigurationFile");
	socConFil.setTypeEquals(BaseType.STRING);
	socConFil.setExpression("socket.cfg");
	new Parameter(socConFil, "allowFiles",       BooleanToken.TRUE);
	new Parameter(socConFil, "allowDirectories", BooleanToken.FALSE);
	socConFil.setVisibility(Settable.EXPERT);


	// we produce one (DOUBLE_MATRIX) token as the initial output
	output_tokenInitProduction.setExpression("1");
    }

    ///////////////////////////////////////////////////////////////////
    ////                         public methods                    ////

    /** Consume at most one token from each input and update the
     *  counter appropriately. Send the current value of the counter
     *  to the output.  If there are no input tokens available, no
     *  output will be produced. 
     *  This method may be invoked multiple times per time step.
     *
     *  @exception IllegalActionException If there is no director.
     */
    public void fire() throws IllegalActionException {
        super.fire();
	// Check the input port for a token.
	if (input.hasToken(0)) {
	    if ( !firstFire && server.getClientFlag() == 0){
		// If clientflag is non-zero, do not read anymore
		_writeToServer();
		// before the read happens, the client program will advance one time step
		_readFromServer();

		// make sure that time is synchronized.
		final double simTim = getDirector().getModelTime().getDoubleValue();
		final double simTimRea = server.getSimulationTimeReadFromClient();

		if ( Math.abs(simTim-simTimRea) > 0.0001 ){
		    final String em = "Simulation time of " +
			this.getFullName()
			+ " is not synchronized." + LS +
			"Time in Ptolemy = " + simTim + LS +
			"Time in client  = " + simTimRea;
		    throw new IllegalActionException(em);
		}

		if ( server.getClientFlag() == 0){
		    double[] dblRea = server.getDoubleArray();
		    outTok = new DoubleMatrixToken(dblRea, dblRea.length, 1);
		}
	    }
	    else{ // Either client is down or this is the first time step. Consume token
		input.get(0);
		firstFire = false;
	    }
	}
	//////////////////////////////////////////////////////
	// send output token
	output.send(0, outTok);
    }

    private void _writeToServer() throws IllegalActionException {
	//////////////////////////////////////////////////////
	// Write data to server
	dblWri = _getDoubleArray( input.get(0) );
	try{
	    //	    	   		Thread.sleep(1000); // in milliseconds
	    server.write(0, tokTim, dblWri);
	}
	catch(java.io.IOException e){
	    String em = "Error while writing to server: " + LS
		+ e.getMessage();
	    throw new IllegalActionException(this,  em);
	}
	// get tokens' time stamp. This time will be written to the 
	// client in the next time step, this time step read from the client
	// the output which will be sent to clients in the next time step
	// as inputs
	tokTim = getDirector().getModelTime().getDoubleValue();
    }
    
    private void _readFromServer() throws IllegalActionException {
	//////////////////////////////////////////////////////
	// Read data from server
	try{
	    //		Thread.sleep(100); // in milliseconds
	    server.read();
	    int fla = server.getClientFlag();
	    if (fla < 0){
		final String em = "Client " + this.getFullName() +
		    " terminated communication by sending flag = " + fla;
		throw new IllegalActionException(em);
	    }
	    if (fla > 0){
		final String em = "Client " + this.getFullName() +
		    " terminated communication by sending flag = " + fla +
		    LS + " at time " + getDirector().getModelTime().getDoubleValue();
		System.out.println(em);
	    }
	}
	catch(java.net.SocketTimeoutException e){
	    String em = "SocketTimeoutException while reading from server in " +
		this.getFullName() + ": " + LS 
		+ e.getMessage() + "." + LS + 
		"Try to increase the value of the parameter 'socketTimeout'";
	    try{ server.close(); }
	    catch(java.io.IOException e2){}; // do nothing here
	    throw new IllegalActionException( em );
	}
	catch(java.io.IOException e){
	    String em = "IOException while reading from server: " + LS 
		+ e.getMessage();
	    try{ server.close(); }
	    catch(java.io.IOException e2){}; // do nothing here
	    throw new IllegalActionException( em );
	}
    }


    public void preinitialize() throws IllegalActionException {
        super.preinitialize();

	// Working directory
	String worDir  = cutQuotationMarks(workingDirectory.getExpression());
	// If directory is not set, set it to current directory.
	if (worDir.length() == 0)
	    worDir = ".";
	// Verify that directory exist
	if ( ! new File(worDir).isDirectory()) {
	    String em = "Error: Working directory does not exist." + LS 
		+ "Working directory is set to: '" + worDir + "'" + LS
		+ "Check configuration of '" + this.getFullName() + "'.";
	    throw new IllegalActionException(em);
	}

	// Command that starts the simulation
	//	final String simCon  = cutQuotationMarks(socConFil.getExpression());
	final String simCon  = socConFil.stringValue();
	// Assign BSD port number
	porNo = Integer.valueOf(portNumber.getExpression());
	//////////////////////////////////////////////////////////////	
	// Instantiate server for IPC
	try{
	    // time out in milliseconds
	    final int timOutMilSec = Integer.valueOf(timOut.getExpression());
	    if ( timOutMilSec <= 0){
		final String em = "Parameter for socket time out must be positive." 
		    + LS + "Received " + timOutMilSec + " milliseconds";
		throw new IllegalActionException(em);
	    }
	    if ( porNo < 0 )
		server = new Server(timOutMilSec); // server uses any free port number
	    else
		server = new Server(porNo, timOutMilSec);
	    // get port number
	    porNo = server.getLocalPort();
	}
	catch(java.io.IOException e){
	    // try to close server unless it is still a null pointer
	    if ( server != null){
		try{
		    server.close();
		}
		catch(java.io.IOException e2){}
	    }
	    // throw original exception
	    throw new IllegalActionException(e.getMessage());
	}
	////////////////////////////////////////////////////////////// 
	// Write xml file for client
	XMLWriter xmlWri = new XMLWriter(worDir, simCon, porNo);
	try{
	    //Thread.sleep(1000); // in milliseconds
	    xmlWri.write();
	}
	//catch(InterruptedException e){}
	catch(java.io.FileNotFoundException e){
	    String em = "FileNotFoundException when trying to write '" +
		new File(worDir, simCon).getAbsolutePath() + "'.";
	    throw new IllegalActionException(em);
	}
	catch(java.io.IOException e){
	    throw new IllegalActionException(e.toString());
	}
    }

    /** Starts the simulation process
     *  @exception IllegalActionException If the simulation process arguments
     *                           are not valid
     */
    private void _startSimulation()
	throws IllegalActionException {
	//////////////////////////////////////////////////////////////	
	// If porNo > 0, write client configuration file.
	// Else we assume there is already such a file provided by the user
	// Working directory
	final String worDir  = cutQuotationMarks(workingDirectory.getExpression());
	//////////////////////////////////////////////////////////////	
	// start the simulation process
	final String comArg = cutQuotationMarks(command.getExpression());
	final String argLin  = cutQuotationMarks(arguments.getExpression());
	List<String> com = new ArrayList<String>();
	StringTokenizer st = new StringTokenizer(comArg);
	while (st.hasMoreTokens())
	    com.add(st.nextToken());
	st = new StringTokenizer(argLin);
	while (st.hasMoreTokens()) 
	    com.add(st.nextToken());
	cliPro = new ClientProcess();
	cliPro.setProcessArguments(com, worDir);
	File slf = simLogFil.asFile();
	try{
	    if ( slf.exists() ) // try to delete file if it exists
		if ( ! slf.delete() )
		    throw new Exception("Cannot delete file.");
	    slf.createNewFile(); // make sure we can write new file
	    if( ! slf.canWrite() ){
		throw new Exception("Cannot write to file.");
	    }
	}
	catch(Exception e){
	    String em = "Error: Cannot write to simulation log file." + LS 
		+ "Simulation log file is '" + slf.getAbsolutePath() + "'" + LS
		+ "Check configuration of '" + this.getFullName() + "'.";
	    throw new IllegalActionException(em);
	}
	cliPro.setSimulationLogFile(slf);
	cliPro.run();
	if (!cliPro.processStarted() ){
	    String em = "Error: Simulation process did not start." + LS 
		+ cliPro.getErrorMessage() + LS
		+ "Check configuration of '" + this.getFullName() + "'.";
	    throw new IllegalActionException(em);
	}
    }
    
    /** Initialize state variables.
     *  @exception IllegalActionException If the parent class throws it or
     *                              if the server socket cannot be opened
     */
    public void initialize() throws IllegalActionException {
        super.initialize();

	tokTim = getDirector().getModelTime().getDoubleValue();
	firstFire = true;

	_startSimulation();
	//////////////////////////////////////////////////////////////	
	// New code since 2008-01-05
	// Send initial output token. See also domains/sdf/lib/SampleDelay.java
	_readFromServer();
	double[] dblRea = server.getDoubleArray();
	outTok = new DoubleMatrixToken(dblRea, dblRea.length, 1);
	output.send(0, outTok);
    }

    /** Closes sockets and shuts down the simulator.
     * 
     *  @exception IllegalActionException if the base class throws it or
     *        if an I/O error occurs when closing the socket.
     */
    public void wrapup() throws IllegalActionException{
	super.wrapup();
	try{
	    // send signal to the client that we are done with the time stepping
	    // so the client can end gracefully
	    server.write(1, tokTim, dblWri);
	    // close the server
	    server.close();
	}
	catch(java.io.IOException e){
	    throw new IllegalActionException(e.getMessage());
	}
    }


    /** Cuts the leading and terminating quotation marks if present.
     *
     *@param str the string
     *@return the string with leading and terminating quotation marks removed if present
     */
    public static String cutQuotationMarks(String str){
	if ( str.startsWith("\"") && str.endsWith("\"") )
	    return str.substring(1, str.length() - 1);
	else
	    return str;
    }

    /** Gets a double array from the Token.
     *
     * @param t the token which must be a type that can be converted to an ArrayToken
     * @return the double[] array with the elements of the Token
     * @exception IllegalActionException If the base class throws it.
     */
    private double[] _getDoubleArray(ptolemy.data.Token t)
	throws IllegalActionException
    {
	DoubleMatrixToken arrTok = (DoubleMatrixToken)t;
	int n = arrTok.getRowCount();
	double[] ret = new double[n];
	for(int i = 0; i < n; i++){
	    DoubleToken scaTok = (DoubleToken)arrTok.getElementAsToken(i, 0);
	    ret[i] = scaTok.doubleValue();
	    if (Double.isNaN(ret[i])){
		final String em = "Actor " + this.getFullName() + ": " + LS 
		    + "Token number " + i + " is NaN at time " + 
		    getDirector().getModelTime().getDoubleValue();
		throw new IllegalActionException(em);
	    }
	}
	return ret;
    }

    ///////////////////////////////////////////////////////////////////
    ////                         protected members                   ////

    /** Port number for BSD socket */
    protected Parameter portNumber;

    /** Port number used BSD socket */
    protected int porNo;

    /** Socket time out in milliseconds */
    protected Parameter timOut;

    /** Command line to start the simulation */
    protected FileParameter command;

    /** Working directory of the simulation */
    protected FileParameter workingDirectory;

    /** File name for the simulation log file */
    protected FileParameter simLogFil;

    /** File name for the simulation configuration file */
    protected FileParameter socConFil;

    /** List of arguments */
    protected Parameter arguments;

    /** Server used for data exchange */
    protected Server server;

    /** Process that runs the simulation */
    protected Process simProJav;

    /** Output tokens */
    DoubleMatrixToken outTok;

    /** Double values that were written to the socket */
    double[] dblWri;
    /** Thread that runs the simulation */
    ClientProcess cliPro;

    ///////////////////////////////////////////////////////////////////
    ////                         private members                   ////
    /** System dependent line separator */
    private final static String LS = System.getProperty("line.separator");

    /** Time of token that will be written to the client.

        This is equal to the Ptolemy time minus one time step, because at time t_k,
        a client gets the output of other clients at t_{k-1} so the client can 
        produce its states at t_k
    */
    protected double tokTim;

    /** Flag that is true during the first firing of this actor */
    protected boolean firstFire;
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
