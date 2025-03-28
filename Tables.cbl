       IDENTIFICATION DIVISION.
       PROGRAM-ID. Tables.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  TABLE-MONTH.
           05 WS-WORDING-MONTH.
               10 FILLER PIC X(9) VALUE "JANUERY  ".
               10 FILLER PIC X(9) VALUE "FEBRUARY ".
               10 FILLER PIC X(9) VALUE "MARCH    ".
               10 FILLER PIC X(9) VALUE "APRIL    ".
               10 FILLER PIC X(9) VALUE "MAY      ".
               10 FILLER PIC X(9) VALUE "JUNE     ".
               10 FILLER PIC X(9) VALUE "JULY     ".
               10 FILLER PIC X(9) VALUE "AUGUST   ".
               10 FILLER PIC X(9) VALUE "SEPTEMBER".
               10 FILLER PIC X(9) VALUE "OCTOBER  ".
               10 FILLER PIC X(9) VALUE "NOVEMBER ".
               10 FILLER PIC X(9) VALUE "DECEMBER ".
           05 WS-NAME-MONTH REDEFINES WS-WORDING-MONTH.
               10 WS-MONTH PIC X(9) OCCURS 12 TIMES.
           


       01  WS-TABLE.
           05 FILLER PIC X(6) VALUE 'AMELIE'.
           05 FILLER PIC X(7) VALUE 'FRENCH'.
           05 FILLER PIC 9(2) VALUE 15.
           05 FILLER PIC X(7) VALUE 'MATHS'.
           05 FILLER PIC 9(2) VALUE 13.
           05 FILLER PIC X(7) VALUE 'HISTORY'.
           05 FILLER PIC 9(2) VALUE 11.
           05 FILLER PIC X(6) VALUE 'THEO'.
           05 FILLER PIC X(7) VALUE 'FRENCH'.
           05 FILLER PIC 9(2) VALUE 14.
           05 FILLER PIC X(7) VALUE 'MATHS'.
           05 FILLER PIC 9(2) VALUE 16.
           05 FILLER PIC X(7) VALUE 'HISTORY'.
           05 FILLER PIC 9(2) VALUE 09.

       01  WS-TABLE-STUDENT-NOTE REDEFINES WS-TABLE.
           05 WS-INFO-STUDENT  OCCURS 2 TIMES.
               10 WS-FIRSTNAME PIC X(6).
               10 WS-SUBJECT   OCCURS 3 TIMES.
                   15 WS-NAME-SUBJECT  PIC X(7).
                   15 WS-AVERAGE       PIC 9(2).
       
       01  I PIC 99 VALUE 1.
       01  J PIC 99 VALUE 1.



       01  WS-TABLE-FN.
           10 FILLER PIC X(7) VALUE "Eric".  
           10 FILLER PIC X(7) VALUE "Sarah".  
           10 FILLER PIC X(7) VALUE "Michael".  
           10 FILLER PIC X(7) VALUE "BOB".  
           10 FILLER PIC X(7) VALUE "Lucie".  

       01  WS-TABLE-FIRSTNAME REDEFINES WS-TABLE-FN.
           05 WS-FN PIC X(7) OCCURS 5 TIMES.
       
       01  k PIC 9 VALUE 1.

       PROCEDURE DIVISION.
           
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 2
               DISPLAY '-------------------'
               DISPLAY 'ETUDIANT: ' WS-FIRSTNAME(I)
               PERFORM VARYING J FROM 1 BY 1 UNTIL J > 3
                   DISPLAY '*********'
                   DISPLAY 'SUBJECT: ' WS-NAME-SUBJECT(I,J)
                   DISPLAY 'AVERAGE: ' WS-AVERAGE(I,J)
               END-PERFORM
           END-PERFORM.

           SORT WS-FN ON DESCENDING KEY WS-FN.
           PERFORM VARYING k FROM 1 BY 1 UNTIL k > 5
             DISPLAY WS-FN(k)
           END-PERFORM.

           STOP RUN.
