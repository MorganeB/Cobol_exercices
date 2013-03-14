             program-id. client.

             1 client.
               2 ref pic x(8).
               2 nom pic x(20).
               2 prenom pic x(20).
               2 date-naiss.
                   3 jour-naiss pic 99.
                   88 jour-correct value 1 thru 31.
                   3 mois-naiss pic 99.
                   88 mois-correct value 1 thru 12.
                   3 annee-naiss pic 99.
                   88 annee-correct value 1900 thru 1988.
               2 domicile.
                   3 ville pic x(30).
                   3 cp pic 99999.
           1 pic x value 'o'.
           88 correct value 'o' false 'n'.


           screen section.
           1 ecran.
               2 blank screen.
           1 a-plg-titre.
               2 line 2 col 20 'Nouveau client'.
           1 s-plg-nom.
               2 line 5 col 5 'Nom '.
               2 s-nom pic x(20) to nom required.
           1 s-plg-prenom.
               2 line 7 col 5 'Prenom '.
               2 s-prenom pic x(20) to prenom required.
           1 s-plg-date-naiss.
               2 line 9 col 5 'Date de naissance '.
               2 s-jour-naiss pic 99 to jour-naiss required.
               2 '/'.
               2 s-mois-naiss pic 99 to mois-naiss required.
               2 '/'.
               2 s-annee-naiss pic 9999 to annee-naiss required.
           1 s-plg-domicile.
               2 line 11 col 5 'Domicile '.
               2 line 13 col 10 'Ville '.
               2 s-ville pic x(30) to ville required.
               2 line 15 col 10 'Code postal '.
               2 s-cp pic xxxxx to cp required.

           1 plg-accord.
               2 line 20 col 30.
               2 'Votre reference client : '.
               2 a-chp-ref-client pic x(8) from ref.

           1 plg-message.
               2 line 20 col 30.
               2 'Mauvaise saisie'.


           procedure division.
               display a-plg-titre
               perform mod-saisie
               perform mod-control
              if correct then perform mod-accord
                 else display plg-message
              end-if
               goback
           .

           mod-saisie.
               display s-plg-nom
               accept s-nom
               display s-plg-prenom
               accept s-prenom

               display s-plg-date-naiss
               accept s-jour-naiss
               accept s-mois-naiss
               accept s-annee-naiss
               display s-plg-domicile
               accept s-ville
               accept s-cp
           .

           mod-control.
               if nom not alphabetic or prenom not alphabetic
                   set correct to false
               end-if

               if not (jour-correct and mois-correct and annee-correct)
                   set correct to false
               end-if

               .

           mod-accord.
               move nom(1:2) to ref(1:2)
               move prenom(1:2) to ref(3:2)
               move annee-naiss(3:2) to ref (5:2)
               move cp (1:2) to ref(7:2)


           .
            end program client.









