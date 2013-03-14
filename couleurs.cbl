       program-id. couleurs.

       1 ligne     pic 99.
       1 colonne   pic 99.
       1 bgc       pic 9 value 1.

       screen section.

       1   effacer-ecran blank screen background-color 3.
       1 a-chp-coul line ligne col colonne ' ' background-color bgc.


       procedure division.

       display effacer-ecran
       perform test after varying ligne from 5 by 1 until colonne = 10
           perform test after varying colonne from 5 by 1 until colonne
           = 10
           compute bgc=bgc + 2
           display a-chp-coul
           compute colonne = colonne + 1
           end-perform
           compute ligne= ligne + 1
       end-perform

       end program couleurs.


