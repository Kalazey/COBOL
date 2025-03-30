       IDENTIFICATION DIVISION.
       PROGRAM-ID. Unstring.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CHAINE PIC X(50)
                 VALUE "COBOL est un langage de programmation puissant".
       01  MOT1 PIC X(10).
       01  MOT2 PIC X(10).
       01  MOT3 PIC X(10).
       01  MOT4 PIC X(10).
           
       PROCEDURE DIVISION.

       UNSTRING CHAINE
           DELIMITED BY " "
           INTO MOT1 MOT2 MOT3 MOT4
           DISPLAY "Premier mot: " MOT1
           DISPLAY "Second Mot: " MOT2
           DISPLAY "Troisieme Mot: " MOT3
           DISPLAY "Quatrieme Mot: " MOT4
           
           STOP RUN.
