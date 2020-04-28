//COVIDJ JOB 1
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(COVID01),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(COVID01),DISP=SHR
//***************************************************/
// IF RC = 0 THEN
//***************************************************/
//RUN     EXEC PGM=COVID01
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//CNTRYREC  DD DSN=&SYSUID..NCOV19(COVDAT),DISP=SHR,
//  DCB=(RECFM=FB,LRECL=130,BLKSIZE=130)
//PRTLINE   DD SYSOUT=*,OUTLIM=17000
//SYSOUT    DD SYSOUT=*,OUTLIM=17000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF
