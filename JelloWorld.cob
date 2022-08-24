      * Need to validate the choice is an integer. Shows desired error
      * but ends program.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. JELLO-WORLD.
       AUTHOR. Amanda Boutwell.
       DATE-WRITTEN. August 23, 2022

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 YourName PIC X(15).
           01 Choice PIC 9.
           01 YourFlavor PIC X(15).
           01 Again PIC X VALUE 'Y'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       DISPLAY "Welcome."
       DISPLAY " "
       DISPLAY "What is your name? "
       ACCEPT YourName
       DISPLAY " "
       DISPLAY "Jello, " YourName
       PERFORM UNTIL Again='N' 
               DISPLAY "Choose one " WITH NO ADVANCING
               DISPLAY "of our 6 delicious flavors. "
               DISPLAY "   "
               DISPLAY "1: Strawberry"
               DISPLAY "2: Cherry"
               DISPLAY "3: Raspberry"
               DISPLAY "4: Orange"
               DISPLAY "5: Lemon"
               DISPLAY "6: Lime"
               DISPLAY "0: Quit"
               DISPLAY " "
               ACCEPT Choice
               DISPLAY " "
               EVALUATE Choice
                   WHEN 1 MOVE 'Strawberry' TO YourFlavor
                   WHEN 2 MOVE 'Cherry' TO YourFlavor
                   WHEN 3 MOVE 'Raspberry' TO YourFlavor
                   WHEN 4 MOVE 'Orange' TO YourFlavor
                   WHEN 5 MOVE 'Lemon' TO YourFlavor
                   WHEN 6 MOVE 'Lime' TO YourFlavor
                   WHEN 0 MOVE 'N' TO Again
                   WHEN OTHER MOVE 'ERROR' TO YourFlavor
               END-EVALUATE
               DISPLAY "   "
               DISPLAY "   "
               DISPLAY "Here is your choice: " YourFlavor "."
               DISPLAY "   "
               DISPLAY "   "
       END-PERFORM.
       DISPLAY "   "
       DISPLAY "Next time you are at the " WITH NO ADVANCING
               DISPLAY "the store, be sure to look " WITH NO ADVANCING
               DISPLAY "for the box with the Big Red " WITH NO ADVANCING
               DISPLAY "Letters."
               DISPLAY "J-E-L-L--O!"          
                  STOP RUN.

       END PROGRAM JELLO-WORLD.
