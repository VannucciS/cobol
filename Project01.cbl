      ******************************************************************
      * Author:Vannucci
      * Date:Feb/28/2025
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       FILE-CONTROL.
           SELECT STUDENT-FILE ASSIGN TO "student-output.txt"
               ORGANIZATION IS LINE SEQUENTIAL
               ACCESS IS SEQUENTIAL.

       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       FD STUDENT-FILE.
       01  STUDENTDATA.
           02 STUDENTNUMBER    PIC 9(7).
           02 FILLER   PIC A(1) VALUE " ".
           02  TUITIONOWED     PIC 9(5).
           02 FILLER   PIC A(1) VALUE " ".
           02  STUDENTNAME     PIC A(40).

       WORKING-STORAGE SECTION.
      *-----------------------
       01 STUDENT-DATA.
           05 STUDENT-NUMBER PIC 9999999.
           05 TUITION-OWED PIC 99999.
           05 STUDENT-NAME PIC A(40).
       01  EOD PIC X VALUE "N".

       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
           OPEN OUTPUT STUDENT-FILE.
           PERFORM DATA-PROMPT WITH TEST AFTER
               UNTIL EOD = 'N'.
           CLOSE STUDENT-FILE.
           STOP RUN.

       DATA-PROMPT.
           DISPLAY "Enter student number: "
           ACCEPT STUDENT-NUMBER.
           DISPLAY "Enter student tuition owed: "
           ACCEPT TUITION-OWED.
           DISPLAY "Enter student name: ".
           ACCEPT STUDENT-NAME.
           DISPLAY "ADD MORE DATA? (Y/N) "
           ACCEPT EOD.
               MOVE STUDENT-NUMBER TO STUDENTNUMBER
               MOVE TUITION-OWED TO TUITIONOWED
               MOVE STUDENT-NAME TO STUDENTNAME
               WRITE STUDENTDATA
               END-WRITE.
           DISPLAY "*********************************************".


      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
