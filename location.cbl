       program-id. location.

       1 km        pic 9999.
       1 jours     pic 999.
       1 diesel    pic 9999v99.
       1 essence   pic 9999v99.

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Location d'' vehicule'.
       1 s-plg-jours.
           2 line 9 col 1 'Combien de jours de location ? '.
           2 s-jours pic zzz to jours required.

       1 s-plg-km.
           2 line 11 col 1 'Combien de km ? '.
           2 s-km pic zzzz to km required.

       1 a-plg-masc-res.
           2 line 13 col 4 'Avec un diesel : '.
           2 line 14 col 4 'Avec un essence : '.

       1 a-plg-masc-choix1.
           2 line 16 col 4 'Vous devriez choisir : diesel.'.

       1 a-plg-masc-choix2.
           2 line 16 col 4 'Vous devriez choisir : essence.'.

       1 a-plg-val-res.
           2 a-diesel line 13 col 20 pic zzzz.99 from diesel.
           2 a-essence line 14 col 20 pic zzzz.99 from essence.

       procedure division.
       display a-plg-titre
           display s-plg-jours
           accept s-jours

           display s-plg-km
           accept s-km

           compute diesel=(jours*50) + (km*0.1)
           compute essence=(jours*40) + (km * 0.15)

           display a-plg-masc-res.
           display a-plg-val-res.
           if(diesel < essence) display
               a-plg-masc-choix1
               else display
                   a-plg-masc-choix2


       end program location.

















