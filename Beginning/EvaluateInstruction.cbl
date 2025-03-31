       IDENTIFICATION DIVISION.
       PROGRAM-ID. EvaluateInstruction.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  STATUT-EMPLOYE  PIC X(04) VALUE SPACES.

       PROCEDURE DIVISION.
           DISPLAY "Entree l'etat de l'employe (ACT, INAC, CNG): "
           ACCEPT STATUT-EMPLOYE

           EVALUATE TRUE
             WHEN STATUT-EMPLOYE = "ACT"
               DISPLAY "L'employe est actif."
             WHEN STATUT-EMPLOYE = "INAC"
               DISPLAY "L'employe est inactif."
             WHEN STATUT-EMPLOYE = "CNG"
               DISPLAY "L'employe est en conge."
             WHEN OTHER
               DISPLAY "Stqtut inconnu, veuillez entrer un code valide."
           END-EVALUATE.

           STOP RUN.
           