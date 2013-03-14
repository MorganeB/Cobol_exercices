       program-id. hypotenuse.
       1 cote1 pic 999v99.
       1 cote2 pic 999v99.
       1 hypotenuse pic 9999v99.

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Hypotenuse d''un triangle'.
       1 s-plg-cote1.
           2 line 8 col 2 'Longueur du cote 1 : '.
           2 s-cote1 pic zzzz.zz to cote1 required.

       1 s-plg-cote2.
           2 line 10 col 2 'Longueur du cote 2 : '.
           2 s-cote2 pic zzzz.zz to cote2 required.

       1 a-plg-masc-res.
           2 line 12 col 2 'La longueur de l''hypotenuse est de '.
           2 a-hypotenuse line 13 col 2 pic zzzz.zz from hypotenuse.

       procedure division.
       display a-plg-titre
           display s-plg-cote1
           accept s-cote1

           display s-plg-cote2
           accept s-cote2

           compute hypotenuse=function sqrt(cote1**2+cote2**2)

           display a-plg-masc-res

       end program hypotenuse.


