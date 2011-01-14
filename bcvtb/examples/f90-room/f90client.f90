program first
! Note: This program uses fixed array size. 
!       Variable array size (using ALLOCATE) do not work: The c
!       function only gets a value of 0 for all elements.
!       This is also the case if a fortran pointer is passed as an argument
!       instead of the array itself.

  IMPLICIT NONE

  ! These parameters are also declared in an interface below. 
  ! Change all together.
  INTEGER, PARAMETER :: nDblMax = 2      ! Maximum number of doubles
  INTEGER, PARAMETER :: nIntMax = 0      ! Maximum number of integers
  INTEGER, PARAMETER :: nBooMax = 0      ! Maximum number of booleans

  interface 
     function establishclientsocket(fileName)
       CHARACTER(len=*) :: fileName  ! file from which socket port number will be read
       INTEGER establishclientsocket ! socket file descriptor
     end function establishclientsocket
  end interface

  interface 
     function exchangeWithSocket( socketFD, &
          flaWri, flaRea, &
          nDblWri, nIntWri, nBooWri, &
          nDblRea, nIntRea, nBooRea, &
          simTimWri, &
          dblValWri, intValWri, booValWri, &
          simTimRea, &
          dblValRea, intValRea, booValRea)
       ! These parameters are also declared in an interface below. 
       ! Change all together.
       INTEGER, PARAMETER :: nDblMax = 2      ! Maximum number of doubles
       INTEGER, PARAMETER :: nIntMax = 0      ! Maximum number of integers
       INTEGER, PARAMETER :: nBooMax = 0      ! Maximum number of booleans

       INTEGER socketFD ! socket file descriptor

       INTEGER flaWri   ! flag to write to the socket
       INTEGER flaRea   ! flag read from the socket

       INTEGER nDblWri ! number of doubles to write to socket
       INTEGER nIntWri ! number of integers to write to socket
       INTEGER nBooWri ! number of booleans to write to socket

       INTEGER nDblRea ! number of doubles to read from socket
       INTEGER nIntRea ! number of integers to read from socket
       INTEGER nBooRea ! number of booleans to read from socket

       DOUBLE PRECISION simTimWri ! simulation time to write to socket
       ! if ':' instead of '2' is specified, then 1.7042624463E-313 is exchanged.
       DOUBLE PRECISION, DIMENSION(nDblMax) :: dblValWri  
       INTEGER,          DIMENSION(nIntMax) :: intValWri
       LOGICAL,          DIMENSION(nBooMax) :: booValWri

       DOUBLE PRECISION simTimRea  ! simulation time to read from socket
       DOUBLE PRECISION, DIMENSION(nDblMax) :: dblValRea
       INTEGER,          DIMENSION(nIntMax) :: intValRea
       LOGICAL,          DIMENSION(nBooMax) :: booValRea
       INTEGER exchangeWithSocket
     end function exchangeWithSocket
  end interface

  interface 
     function closesocket(socketFD)
       INTEGER socketFD ! socket file descriptor
       INTEGER closesocket
     end function closesocket
  end interface


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Declarations for room model
  INTEGER, PARAMETER :: nRoo = 2      ! Number of rooms
  DOUBLE PRECISION :: TIni      ! Initial room temperature
  DOUBLE PRECISION :: tau       ! Room time constant
  DOUBLE PRECISION :: Q0Hea     ! Nominal heating power
  DOUBLE PRECISION :: delTim    ! Time step
  DOUBLE PRECISION :: UA        ! UA value
  DOUBLE PRECISION :: TOut      ! current outside temperature
  DOUBLE PRECISION :: simTimRea ! simulation time read from the socket
  DOUBLE PRECISION :: simTim    ! current simulation time


  DOUBLE PRECISION, DIMENSION(nRoo) :: C       ! Room heat capacity
  DOUBLE PRECISION, DIMENSION(nRoo) :: y       ! control signal
  DOUBLE PRECISION, DIMENSION(nRoo) :: TRoo    ! current room temperature



!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Declarations for IPC
  CHARACTER(len=*), PARAMETER :: simCfgFilNam="socket.cfg"
  INTEGER portNo
  INTEGER i
  INTEGER retVal
  INTEGER socketFD
  INTEGER flaWri, flaRea
  INTEGER nDblWri, nIntWri, nBooWri
  INTEGER nDblRea, nIntRea, nBooRea
  DOUBLE PRECISION, DIMENSION(nDblMax) :: dblValWri
  INTEGER,          DIMENSION(0)       :: intValWri
  LOGICAL,          DIMENSION(0)       :: booValWri
  DOUBLE PRECISION, DIMENSION(nDblMax) :: dblValRea
  INTEGER,          DIMENSION(0)       :: intValRea
  LOGICAL,          DIMENSION(0)       :: booValRea


! Buffer for the command line argument
  CHARACTER *100 BUFFER  

! Get the command line argument
  IF ( iargc() .LT. 1 ) THEN
     WRITE(*,*) "Error: Wrong arguments in client"
     WRITE(*,*) "Usage: programName simulationTimeStepInSeconds"
     STOP
  ENDIF
  
  CALL GETARG(1,BUFFER)
  READ(BUFFER,*) delTim
  WRITE(*,'(A, G8.3)') "Simulator set time step to ", delTim
  
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Initializations
  OPEN (UNIT=11,FILE='client.log', STATUS='replace', ACTION='write')

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Declare how many variables are written and read
  nDblWri=nRoo
  nIntWri=0
  nBooWri=0

  nDblRea=nRoo
  nIntRea=0
  nBooRea=0

  flaWri = 0
  flaRea = 0

! Initialize room variables
  TIni   = 10     
  tau    = 2*3600 
  Q0Hea  = 100    
  UA = Q0Hea / 20 
  C(1)  =   tau * UA   
  C(2)  = 2*tau * UA   

  TRoo = TIni
  TOut = 5
 
  simTim = 0
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Do time stepping
  write(11,*) "*** Starting simulation"
! Open socket
  socketFD = establishClientSocket(simCfgFilNam)
!!stop 'manual exit'
  write(11, *) "Socket file descriptor = ", socketFD
  IF (socketFD .LT. 0) THEN
     write(11, *) "Error: Could not open socket."
     close(11)
     STOP
  END IF
 
  simulate:  DO 
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Fill arrays for IPC

     DO i=1,nRoo
        dblValWri(i)=TRoo(i)
     END DO
     ! Exchange data   
     retVal = exchangeWithSocket(socketFD, &
          flaWri, flaRea, &
          nDblWri, nIntWri, nBooWri, &
          nDblRea, nIntRea, nBooRea, &
          simTim, &
          dblValWri, intValWri, booValWri, &
          simTimRea, &
          dblValRea, intValRea, booValRea)
     ! Check for errors, in which case we terminate the simulation loop
     IF (retVal .NE. 0) THEN
        write(11,*) "Error: Received retVal = ", retVal
        EXIT simulate
     END IF
     ! Check communication flag
     IF (flaRea .NE. 0) THEN
        write(11,*) "Received end of simulation flag = ", flaRea
        write(11,*) "Exit simulation."
        EXIT simulate
     END IF

     ! No errors found. Assign exchanged variables
     DO i=1,nRoo
        y(i) = dblValRea(i)
     END DO
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Having obtained y_k, we compute the new state x_k+1 = f(y_k)
! This is the actual simulation of the client, such as an
! EnergyPlus time step
     DO i=1,nRoo
        TRoo(i) = TRoo(i) + &
             delTim/C(i) * ( UA * (TOut-TRoo(i) ) + Q0Hea * y(i) )
     END DO
     simTim = simTim + delTim
  END DO simulate
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  
  write(11,*) "*** Ending simulation"
  close(11)
  close(socketFD)
end program
