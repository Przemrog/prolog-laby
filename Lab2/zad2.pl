zatrudnienie(anna, nowak, zelmer, duza_firma, 2000).
zatrudnienie(jan, kowalski, beco, srednia_firma, 2800).
zatrudnienie(maria, nowakowska, bosch, duza_firma, 3000).
zatrudnienie(piotr, adamski, electrolux, srednia_firma, 2200).
zatrudnienie(katarzyna, nowak, amica, mala_firma, 2700).
zatrudnienie(tomasz, polak, gorenje, mala_firma, 2100).

zadowolona_osoba(Imie, Nazwisko) :-
    zatrudnienie(Imie, Nazwisko, _, mala_firma, Zarobki),
    Zarobki > 2500.

