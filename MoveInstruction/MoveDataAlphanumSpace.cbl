       IDENTIFICATION DIVISION.
       PROGRAM-ID. MoveDataAlphanumSpace.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-SOURCE PIC X(03) VALUE "ABC".
       01 WS-DEST PIC X(10) VALUE SPACES.

       PROCEDURE DIVISION.
           MOVE WS-SOURCE TO WS-DEST.
           DISPLAY WS-SOURCE '"'.
           DISPLAY WS-DEST '"'.

           STOP RUN.
