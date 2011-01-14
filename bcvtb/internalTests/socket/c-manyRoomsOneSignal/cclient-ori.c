///////////////////////////////////////////////////////
/// \file   cclient.c
///
/// \brief  Simple simulation program to illustrate
///         implementation of a client.
///
/// \author Michael Wetter,
///         Simulation Research Group, 
///         LBNL,
///         MWetter@lbl.gov
///
/// \date   2007-12-01
///
/// This file is a simple simulation program written 
/// in C to illustrate how to implement a client.
/// The program simulates two rooms, each represented
/// by a first order ordinary differential equation
/// that describes the time rate of change of the
/// room temperature.
/// Input to the room model is the control signal
/// for a heater. The control signal is obtained from
/// Ptolemy II. Output of the model is the room 
/// temperature, which is sent to Ptolemy II.
/// The differential equation is solved using an 
/// explicit Euler integration.
///
///////////////////////////////////////////////////////

#include <stdio.h>
#include <stdlib.h>
//#include <unistd.h> // for sleep 
#include "utilSocket.h"

//////////////////////////////////////////////////////
/// Main function
int main(int argc, char *argv[]){
  //////////////////////////////////////////////////////
  // Declare variables for the socket communication
  // File name used to get the port number
  const char *const simCfgFilNam = "socket.cfg";
  // client error flag
  const int cliErrFla = -1;
  // Flags to exchange the status of the simulation program 
  // and of the middleware.
  int flaWri = 0;
  int flaRea = 0;
  // Number of variables to be exchanged
  const int nDblWri = %nDblMax%;
  int nDblRea;
  // Number of rooms
  int nRoo = nDblWri;
  // Arrays that contain the variables to be exchanged
  double dblValWri[%nDblMax%];
  double dblValRea[1]; // This model reads only one control signal
  int i, sockfd, retVal;
  // set simulation time step
  double delTim;

  //////////////////////////////////////////////////////
  // Declare variables of the room model
  double simTimWri = 0;
  double simTimRea = 0;
  double TIni   = 10;
  double tau    = 2*3600;
  double Q0Hea  = 100;
  double UA     = Q0Hea / 20;
  double TOut   = 5;
  double C[%nDblMax%];
  double TRoo[%nDblMax%];
  double u[1]    = {0};
  for(i=0; i< %nDblMax%; i++){
    C[i] = tau*UA;
    TRoo[i] = TIni;
  } 
  //////////////////////////////////////////////////////
  if (argc <= 1) {
    printf("Usage: %s simulation_timestep_in_seconds\n", argv[0]);
    return(1);
  }
  delTim = atof(argv[1]);
  fprintf(stderr,"Simulation model has time step %8.5g\n", delTim);
  /////////////////////////////////////////////////////////////
  // Establish the client socket
  sockfd = establishclientsocket(simCfgFilNam);
  if (sockfd < 0){
    fprintf(stderr,"Error: Failed to obtain socket file descriptor. sockfd=%d.\n", sockfd);
    exit((sockfd)+100);
  }

  /////////////////////////////////////////////////////////////
  // Simulation loop
  while(1){
    /////////////////////////////////////////////////////////////
    // assign values to be exchanged
    for(i=0; i < nDblWri; i++)
      dblValWri[i]=TRoo[i];

    /////////////////////////////////////////////////////////////
    // Exchange values
    retVal = exchangedoubleswithsocket(&sockfd, &flaWri, &flaRea,
				       &nDblWri, &nDblRea,
				       &simTimWri, dblValWri, 
				       &simTimRea, dblValRea);
    /////////////////////////////////////////////////////////////
    // Check flags
    if (retVal < 0){
      sendclientmessage(&sockfd, &cliErrFla);
      printf("Simulator received value %d when reading from socket. Exit simulation.\n", retVal);
      closeipc(&sockfd);
      exit((retVal)+100);
    }

    if (flaRea == 1){
      printf("Simulator received end of simulation signal from server. Exit simulation.\n");
      closeipc(&sockfd);
      exit(0);
    }

    if (flaRea != 0){
      printf("Simulator received flag = %d from server. Exit simulation.\n", flaRea);
      closeipc(&sockfd);
      exit(1);
    }
    /////////////////////////////////////////////////////////////
    // Check for the correct number of double values
    if (nDblRea != 1){
      printf("Simulator received nDblRea = %d from server, but expected 1. Exit simulation.\n", 
	     nDblRea);
      closeipc(&sockfd);
      exit(1);
    }
    /////////////////////////////////////////////////////////////
    // No flags found that require the simulation to terminate. 
    // Assign exchanged variables
    u[0] = dblValRea[0];

    /////////////////////////////////////////////////////////////
    // Having obtained u_k, we compute the new state x_k+1 = f(u_k)
    // This is the actual simulation time step of the client.
    for(i=0; i < nRoo; i++)
      TRoo[i] = TRoo[i] + delTim/C[i] * ( UA * (TOut-TRoo[i] ) + Q0Hea * u[0] );
    simTimWri += delTim; // advance simulation time
  } // end of simulation loop
}

