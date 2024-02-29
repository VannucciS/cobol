      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. LAB03.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       FILE-CONTROL.
           SELECT CAR-FILE-IN
               ASSIGN TO "D:\COBOLFILES\CARFILE.TXT"
                   ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
           FD CAR-FILE-IN.
           01 CAR-RECORD-IN.
               05 CAR-MODEL    PIC X(10).
               05 CAR-DATA.
                   10 ENGINE   PIC X(20).
                   10 TOWING-CAPACITY  PIC 9(8).
                   10  OWNER-NAME  PIC X(15).
       WORKING-STORAGE SECTION.
      *-----------------------
           01 EOF-FLAG     PIC A(1).

       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      * The main procedure of the program
           PERFORM OPEN_ROUTINE.
           PERFORM READ_ROUTINE UNTIL EOF-FLAG     ='Y'.
           PERFORM CLOSE_ROUTINE.
           STOP RUN.

           OPEN_ROUTINE.
               OPEN INPUT CAR-FILE-IN.

           READ_ROUTINE.
               READ CAR-FILE-IN
                   AT END MOVE 'Y' TO EOF-FLAG
                       NOT AT END
                       DISPLAY "Car model "CAR-MODEL
                       DISPLAY "Car motor " ENGINE
                       DISPLAY "Car towing capacity " TOWING-CAPACITY
                       DISPLAY 'Car owner 'OWNER-NAME
                       DISPLAY "**********************".
           CLOSE_ROUTINE.
               CLOSE CAR-FILE-IN.

      ** add other procedures here
       END PROGRAM LAB03.
