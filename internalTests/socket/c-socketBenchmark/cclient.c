///////////////////////////////////////////////////////
/// \file   cclient.c
///
/// \brief  Simple program to to test the time
///         for the socket communication
///
/// \author Michael Wetter,
///         Simulation Research Group, 
///         LBNL,
///         MWetter@lbl.gov
///
/// \date   2010-11-28
///
/// This file is a simple program that receives and
/// sends a user-specified number of double values
/// at each time step.
///
/// To run the program, use the command
///   ./cclient timeStep 
///      where timeStep is the time step of the Ptolemy II model
///
///////////////////////////////////////////////////////

#include <stdio.h>
#include <stdlib.h>
//#include <unistd.h> // for sleep 
#include "utilSocket.h"
#include <time.h>

//////////////////////////////////////////////////////
/// Main function
int main(int argc, char *argv[]){
  // Number of variables to be exchanged
  const int nDblWri = 300;
  int nDblRea = nDblWri;
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
  // Number of steps
  int iStep = 0;
  int iNextWrite = 300;
  int nNextWrite = iNextWrite;
  time_t start, now;
  double dif;

  // Arrays that contain the variables to be exchanged
  double dblValWri[nDblWri];
  double dblValRea[nDblRea];
  int i, sockfd, retVal;
  double delTim;

  //////////////////////////////////////////////////////
  // Declare variables of the room model
  double simTimWri = 0;
  double simTimRea = 0;
  //////////////////////////////////////////////////////
  if (argc <= 1) {
    printf("Usage: %s simulation_timestep_in_seconds\n", argv[0]);
    return(1);
  }
  // Allocate storage and initialize data that will be sent
  delTim  = atof(argv[1]);
  for(i=0; i<nDblWri; i++)
    dblValWri[i] = (double)i;
 
  fprintf(stderr,"Simulation model has time step %8.5g and exchanges %d values.\n", delTim, nDblRea);
  /////////////////////////////////////////////////////////////
  // Establish the client socket
  sockfd = establishclientsocket(simCfgFilNam);
  if (sockfd < 0){
    fprintf(stderr,"Error: Failed to obtain socket file descriptor. sockfd=%d.\n", sockfd);
    exit((sockfd)+100);
  }
  
  /////////////////////////////////////////////////////////////
  // Simulation loop
  time(&start);
  while(1){
    iStep += 1;
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
      printf("Simulator received end of simulation signal from server after %d steps. Exit simulation.\n", iStep);
      closeipc(&sockfd);
      exit(0);
    }

    if (flaRea != 0){
      printf("Simulator received flag = %d from server. Exit simulation.\n", flaRea);
      closeipc(&sockfd);
      exit(1);
    }
    // Check for the correct number of double values
    if (nDblRea != nDblWri){
      printf("Simulator received nDblRea = %d from server, but expected %d. Exit simulation.\n", 
	     nDblRea, nDblWri);
      closeipc(&sockfd);
      exit(1);
    }
    /////////////////////////////////////////////////////////////
    // No flags found that require the simulation to terminate. 
    if (iStep == nNextWrite){
      time(&now);
      dif = difftime(now, start);
      printf("Number of calls to exchangedoubleswithsocket: %d at %8.2f.\n", iStep, dif);
      nNextWrite += iNextWrite;
    }
    // Advance simulation time.
    simTimWri += delTim;
  } // end of simulation loop
}

