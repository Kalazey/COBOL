       IDENTIFICATION DIVISION.
       PROGRAM-ID. MoveCorresponding.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DATE-SOURCE PIC 9(8) VALUE 20250330.
       01 DATE-CIBLE.
          05 DAYS      PIC 9(2).
          05 FILLER    PIC X(1) VALUE "/".
          05 MONTHS    PIC 9(2).
          05 FILLER    PIC X(1) VALUE "/".
          05 YEARS     PIC 9(4).

       PROCEDURE DIVISION.
           MOVE DATE-SOURCE(7:2) TO DAYS.
           MOVE DATE-SOURCE(5:2) TO MONTHS.
           MOVE DATE-SOURCE(1:4) TO YEARS.
           
           DISPLAY DATE-CIBLE.

           STOP RUN.
           