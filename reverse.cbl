       program-id. inverse.

       1 mot pic x(20).
       1 inverse pic x(20).
       1 long  pic 99 value 0.


       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Inverser un mot'.

       1 s-plg-mot.
           2 line 9 col 1 'Entrer un mot de 20 caracteres maximum '.
           2 s-mot line 10 col 1 pic x(20) to mot required.

       1 a-plg-res.
           2 line 11 col 1 'Mot inverse = '.
           2 a-inverse line 11 col 15 pic x(20) from inverse.


       procedure division.

       display a-plg-titre
           display s-plg-mot
           accept s-mot

          inspect mot tallying long for characters before space

           move function reverse(mot (1:long)) to inverse
           display a-plg-res

           end program inverse.




