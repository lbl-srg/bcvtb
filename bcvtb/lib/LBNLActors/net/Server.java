package LBNLActors.net;

import java.io.*;
import java.net.*;

/** Server that opens a BSD socket for communication with simulation engine.
 *
 * @author Michael Wetter
 * @version 0.1
 * @since BCVTB 0.1
 */
public class Server {


    /** Constructor.
     *
     * Constructs a server on any available port.
     *
     * @param timOut Socket time out in milliseconds
     * @exception IOException if the server socket cannot be opened
     */
    public Server(int timOut)
	throws IOException{
	this(0, timOut);
    }

    /** Constructor.
     *
     * Constructs a server on the port specified by <tt>portNo</tt>.
     *
     * @param portNo Port number for BSD socket.
     * @param timOut Socket time out in milliseconds
     * @exception IOException if the server socket cannot be opened
     */
    public Server(int portNo, int timOut) 
	throws IOException{
	serSoc = new ServerSocket(portNo);
	 flaFroCli = 0;
	 if (!serSoc.isBound()){
	     String em = "Server socket failed to bind to an address.";
	     throw new IOException(em);
	 }
	 serSoc.setSoTimeout(timOut);
    }

    /** Gets the port number
     *
    */
    public int getLocalPort(){
	return serSoc.getLocalPort();
    }

    /** Writes data to the socket.
     *
     * @param flagToClient Communication flag
     * @param curTim the current simulation time.
     * @param dblVal the array with double values.
     * @exception IOException If a communication problems occur.
     */
    public void write(int flagToClient,
		      double curTim, 
		      double[] dblVal) throws IOException {
	simTimWri = curTim;
	////////////////////////////////////////////////////
	// Set up string
	// add zeros for number of integers and booleans
	final int nDbl = (dblVal != null) ? dblVal.length : 0;
	StringBuffer strBuf = new StringBuffer(Integer.toString(verNo));
	strBuf.append(" " + Integer.toString(flagToClient)); // the communication flag
	strBuf.append(" " + Integer.toString(nDbl));         // then number of doubles
	strBuf.append(" 0 0 "); // the number of integers and booleans
	strBuf.append(curTim);  // the current simulation time
	strBuf.append(" ");
	for(int i = 0; i < nDbl; i++){
	    strBuf.append(String.valueOf(dblVal[i]));
	    strBuf.append(" ");
	}
	// add line termination for parsing in client
	strBuf.append("\n");
	_write(strBuf);
    }

    /** Writes the data to the socket 
     *
     * @param strBuf the string buffer to be sent to the socket
     * @exception IOException If communication problems occur
     */     
    private void _write(StringBuffer strBuf) throws IOException {
	BufferedWriter wr = 
	    new BufferedWriter(new OutputStreamWriter(cliSoc.getOutputStream()));
        wr.write(new String(strBuf));
        wr.flush();
    }

    /** Returns the last communication flag read from the socket.
     *
     * @return the communication flag
    */
    public int getClientFlag(){
	return flaFroCli;
    }
    

    /** Returns the last double array read from the socket.
     *
     * @return dblVal the array with double values
     */
    public double[] getDoubleArray(){
	return dblVal;
    }

    /** Returns the last simulation time written to the client
     *
     * @return the last simulation time written to the client
     */
    public double getSimulationTimeWrittenToClient(){
	return simTimWri;
    }

    /** Returns the last simulation time read from the client
     *
     * @return the last simulation time read from the client
     */
    public double getSimulationTimeReadFromClient(){
	return simTimRea;
    }
    
    /** Reads data from the socket.
     *
     * @exception IOException if communication problems occur
     * @expression SocketTimeoutException if the socket does not respond
    */
    public void read()
	throws IOException, java.net.SocketTimeoutException {
	if (cliSoc == null ){ // first call
	    cliSoc = serSoc.accept(); // accept calls from client
	}
	
	////////////////////////////////////////////////////////
	InputStreamReader inpStrRea = 
	    new InputStreamReader(cliSoc.getInputStream());
	BufferedReader d = new BufferedReader(inpStrRea);	
	int iLoo = 0;
	final int nLoo=100;
	final int iSle=nLoo/2;
	while ( ! d.ready() ){
	    if ( iLoo >= iSle){
		if ( iLoo == iSle )
		    System.out.print("Sleeping to wait for socket data .");
		try{
		    //		Thread.sleep(iLoo*1); // in milliseconds
		    System.out.print(".");
		    Thread.sleep((int)java.lang.Math.pow(1.1, iLoo-iSle)); // in milliseconds
		}
		catch(InterruptedException e) 
		    { iLoo = nLoo+1; }
		iLoo++;
		if (iLoo > nLoo){
		    System.out.println("");// adds a new line
		    System.out.println(
			  "Error: Socket is not ready when trying to read.");
		    throw new java.net.SocketTimeoutException(
	                 "Socket is not ready when trying to read.");
		}
		d = new BufferedReader( new InputStreamReader(cliSoc.getInputStream() ) );
	    }
	} // end while loop
	if (iLoo >= iSle) // add end of line character
	    System.out.println();
	String line = d.readLine();
	////////////////////////////////////////////////////
	// get elements from the line
	String[] ele = line.split(" ");
	int ver =  Integer.parseInt(ele[0]);    // the version number
	flaFroCli = Integer.parseInt(ele[1]);   // the communication flag
	if ( flaFroCli == 0 ){ // read further if flag is nonzero
	    int nDbl = Integer.parseInt(ele[2]);
	    int nInt = Integer.parseInt(ele[3]);
	    int nBoo = Integer.parseInt(ele[4]);
	    simTimRea = Double.parseDouble(ele[5]);
	    dblVal = new double[nDbl];
	    // check sufficient array lenght
	    if ( nDbl != dblVal.length){
		throw new IOException("Received " + nDbl + 
				      " doubles, but expected " + 
				      dblVal.length + " elements.");
	    }
	    for(int i = 0; i < nDbl; i++)
		dblVal[i] = Double.parseDouble(ele[6+i]);
	}
    }

    /** Closes the socket.
     *
     * @exception IOException if an I/O error occurs when closing the socket.
     */
    public void close()
	throws IOException{
	if ( cliSoc != null ){
	    cliSoc.close();
	}
	if ( serSoc != null )
	    serSoc.close();
    }

    public static void main(String[] args) throws Exception{
	 int timOut = 10000; // time out in milliseconds
	Server[] ser = new Server[2];
	ser[0] = new Server(Integer.valueOf(args[0]), timOut);
	ser[1] = new Server(Integer.valueOf(args[0])+1, timOut);
	double[] dbl = new double[1];
	for(int i = 0; i < dbl.length; i++){
	    dbl[i] = i;
	}
	int iLoo = 0;
	while(true){
	    for(int iSer=0; iSer < 2; iSer++){
		Thread.sleep(10); // in milliseconds
		ser[iSer].read();
		//		Thread.sleep(10);
		ser[iSer].write(0, new Double(iLoo).doubleValue(), dbl);
		System.out.println("Loop number: " + iLoo);
	    }
	    iLoo++;
	}
    }
    
    /** The server socket */
    protected ServerSocket serSoc;
    /** The client socket */
    Socket cliSoc;
    /** The version number of the socket implementation */
    protected int verNo = 1;
    /** The communication flag read during the socket read command */
    protected int flaFroCli;
    /** The array that contains the last double values read from the socket */
    protected double[] dblVal;
    /** The current simulation time as received from the client */
    protected double simTimRea;
    /** The simulation time last written to the client */
    protected double simTimWri;
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
