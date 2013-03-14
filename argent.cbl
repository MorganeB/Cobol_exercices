       program-id. argent.
       1 val pic 999999.
       1 b200 pic 99.
       1 b100 pic 99.
       1 b50 pic 99.
       1 b20 pic 99.
       1 b10 pic 99.
       1 pieces pic 9999.

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Decomposition d''une somme d''argent'.
       1 s-plg-val.
           2 line 9 col 1 'Entrez une somme d''argent '.
           2 s-val pic zzzzzz to val required.

       1 a-plg-masc-res.
           2 line 11 col 8 'Decomposition : '.
           2 line 12 col 14 'x200 euros'.
           2 line 13 col 14 'x100 euros'.
           2 line 14 col 14 'x50 euros'.
           2 line 15 col 14 'x20 euros'.
           2 line 16 col 14 'x10 euros'.
           2 line 17 col 14 ' pieces'.

       1 a-plg-val-res.
           2 a-b200 line 12 col 10 pic zz from b200.
           2 a-b100 line 13 col 10 pic zz from b100.
           2 a-b50 line 14 col 10 pic zz from b50.
           2 a-b20 line 15 col 10 pic zz from b20.
           2 a-b10 line 16 col 10 pic zz from b10.
           2 a-pieces line 17 col 10 pic zz from pieces.

       procedure division.
       display a-plg-titre
           display s-plg-val
           accept s-val

           compute b200=val/200
           compute pieces=function MOD(val, 200)

           compute b100=pieces/100
           compute pieces=function MOD(pieces,100)

           compute b50=pieces/50
           compute pieces= function MOD(pieces,50)

           compute b20 = pieces / 20
           compute pieces= function MOD(pieces,20)

           compute b10= pieces / 10
           compute pieces= function MOD(pieces,10)

           display a-plg-masc-res
           display a-plg-val-res

       end program argent.




















