      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. READ-EXAMPLE.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
      *-----------------------
       01 VARIABLE-TEST.
           05   FLD-1   PIC	9(3)	VALUE	145.
   	       05   FLD-2   PIC	9(3)	VALUE 222.
   	       05   FLD-3   PIC	9(2)	VALUE	10.
   	       05   FLD-4   PIC	9(3)	VALUE	21.
   	       05   FLD-5   PIC	9(2)	VALUE	33.
           05   FLD-6   PIC	9(4)	VALUE	1111.
           05   RESULT  PIC 999.

       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
            ADD FLD-3 FLD-4 FLD-5 GIVING RESULT.
            DISPLAY "THE ADDITION IS " RESULT.
            SUBTRACT  FLD-3  FLD-4   FLD-5  FROM  FLD-2.
            DISPLAY "Result is "  FLD-2.
            STOP RUN.
      ** add other procedures here
       END PROGRAM READ-EXAMPLE.
