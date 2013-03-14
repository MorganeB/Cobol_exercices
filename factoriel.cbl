
              program-id. factoriel.
              1 n  pic 9.
              1 res pic 99999999.
              1 i pic 99.
              1 nl pic 99 value 11.
              1 nl2 pic 99 value 11.

           screen section.
           1 a-plg-titre.
               2 blank screen.
               2 line 6 col 10 'Calculer plusieurs factoriels'.

           1 s-plg-n.
            2 line 9 col 2 'Combien de n premiers factoriels?'.
            2 s-n pic zz to n required.


            1 a-plg-res.
               2 line 10 col 2 'Valeurs '.
               2 line 10 col 13 'Factoriels '.
               2 a-chp-res line nl col 4 pic zz from i.
               2 a-chp-res line nl2 col 12 pic zzzzzzzz from res.

           procedure division.
           display a-plg-titre
               display s-plg-n
               accept s-n


           perform varying i from 1 by 1 until i > n

               compute res=function factorial(i)
               display a-plg-res
               compute nl = nl + 1
               compute nl2 = nl2 + 1


           end-perform

           end program factoriel.









