/* 
-- Challenge 1 
-- 1.
*/ 

SELECT count(*)
FROM Invoice
WHERE InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
-- 167 ROWS


/* 
-- Challenge 1 
-- 2.
*/ 

SELECT sum(total)
FROM Invoice
WHERE InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
;
-- 1947.97

/* 
-- Challenge 2
-- 1.
*/ 

SELECT FirstName||' '||LastName as CustomerFullName, Phone as CustomerContact, Address as CustomerAddress, InvoiceDate, i.total 
FROM Customer as c
INNER JOIN Invoice as i 
ON c.CustomerId = i.CustomerId
WHERE InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
ORDER BY i.total DESC
;

/* John Doeein			2011-11-01 00:00:00	1000.86
Richard Cunningham	+1 (817) 924-7272	2211 W Berry Street	2012-08-05 00:00:00	23.86
Hugh O'Reilly	+353 01 6792424	3 Chatham Street	2011-04-28 00:00:00	21.86
Victor Stevens	+1 (608) 257-0597	319 N. Frances Street	2011-05-29 00:00:00	18.86
František Wichterlová	+420 2 4172 5555	Klanova 9/506	2012-09-05 00:00:00	16.86
Isabelle Mercier	+33 03 80 73 66 99	68, Rue Jouvence	2012-10-06 00:00:00	16.86
Bjørn Hansen	+47 22 44 22 22	Ullevålsveien 14	2011-06-29 00:00:00	15.86
Fynn Zimmermann	+49 069 40598889	Berger Straße 10	2011-04-23 00:00:00	14.91
Enrique Muñoz	+34 914 454 454	C/ San Bernardo 85	2011-01-25 00:00:00	13.86
Robert Brown	+1 (416) 363-8888	796 Dundas Street West	2011-02-25 00:00:00	13.86
Daan Peeters	+32 02 219 03 03	Grétrystraat 63	2011-03-28 00:00:00	13.86
Wyatt Girard	+33 05 56 96 96 96	9, Place Louis Barthou	2011-07-30 00:00:00	13.86
Kathy Chase	+1 (775) 223-7665	801 W 4th Street	2011-08-30 00:00:00	13.86
Puja Srivastava	+91 080 22289999	3,Raj Bhavan Road	2011-09-30 00:00:00	13.86
Niklas Schröder	+49 030 2141444	Barbarossastraße 19	2011-10-31 00:00:00	13.86
Jack Smith	+1 (425) 882-8080	1 Microsoft Way	2011-12-01 00:00:00	13.86
Mark Taylor	+61 (02) 9332 3633	421 Bourke Street	2012-01-01 00:00:00	13.86
João Fernandes	+351 (213) 466-111	Rua da Assunção 53	2012-02-01 00:00:00	13.86
Fernanda Ramos	+55 (61) 3363-5547	Qe 7 Bloco G	2012-03-03 00:00:00	13.86
Joakim Johansson	+46 08-651 52 52	Celsiusg. 9	2012-04-03 00:00:00	13.86
Edward Francis	+1 (613) 234-3322	230 Elgin Street	2012-05-04 00:00:00	13.86
Kara Nielsen	+453 3331 9991	Sønder Boulevard 51	2012-06-04 00:00:00	13.86
Lucas Mancini	+39 06 39733434	Via Degli Scipioni, 43	2012-07-05 00:00:00	13.86
Heather Leacock	+1 (407) 999-7788	120 S Orange Ave	2012-11-06 00:00:00	13.86
Luís Gonçalves	+55 (12) 3923-5555	Av. Brigadeiro Faria Lima, 2170	2012-12-07 00:00:00	13.86
Julia Barnett	+1 (801) 531-7272	302 S 700 E	2012-09-28 00:00:00	11.94
Jack Smith	+1 (425) 882-8080	1 Microsoft Way	2012-07-31 00:00:00	10.91
João Fernandes	+351 (213) 466-111	Rua da Assunção 53	2012-10-01 00:00:00	10.91
Johannes Van der Berg	+31 020 6223130	Lijnbaansgracht 120bg	2011-06-21 00:00:00	8.94
Marc Dubois	+33 04 78 30 30 30	11, Place Bellecour	2011-01-20 00:00:00	8.91
Dan Miller	+1 (650) 644-3358	541 Del Medio Avenue	2011-02-20 00:00:00	8.91
Manoj Pareek	+91 0124 39883988	12,Community Centre	2011-03-23 00:00:00	8.91
Frank Harris	+1 (650) 253-0000	1600 Amphitheatre Parkway	2011-05-24 00:00:00	8.91
Steve Murray	+44 0131 315 3300	110 Raeburn Pl	2011-06-24 00:00:00	8.91
Ellie Sullivan	+1 (867) 920-2233	5112 48 Street	2011-07-25 00:00:00	8.91
Roberto Almeida	+55 (21) 2271-7000	Praça Pio X, 119	2011-08-25 00:00:00	8.91
Enrique Muñoz	+34 914 454 454	C/ San Bernardo 85	2011-09-25 00:00:00	8.91
Robert Brown	+1 (416) 363-8888	796 Dundas Street West	2011-10-26 00:00:00	8.91
Daan Peeters	+32 02 219 03 03	Grétrystraat 63	2011-11-26 00:00:00	8.91
Hugh O'Reilly	+353 01 6792424	3 Chatham Street	2011-12-27 00:00:00	8.91
Victor Stevens	+1 (608) 257-0597	319 N. Frances Street	2012-01-27 00:00:00	8.91
Bjørn Hansen	+47 22 44 22 22	Ullevålsveien 14	2012-02-27 00:00:00	8.91
Wyatt Girard	+33 05 56 96 96 96	9, Place Louis Barthou	2012-03-29 00:00:00	8.91
Kathy Chase	+1 (775) 223-7665	801 W 4th Street	2012-04-29 00:00:00	8.91
Puja Srivastava	+91 080 22289999	3,Raj Bhavan Road	2012-05-30 00:00:00	8.91
Niklas Schröder	+49 030 2141444	Barbarossastraße 19	2012-06-30 00:00:00	8.91
Mark Taylor	+61 (02) 9332 3633	421 Bourke Street	2012-08-31 00:00:00	8.91
Fernanda Ramos	+55 (61) 3363-5547	Qe 7 Bloco G	2012-11-01 00:00:00	8.91
Joakim Johansson	+46 08-651 52 52	Celsiusg. 9	2012-12-02 00:00:00	8.91
Terhi Hämäläinen	+358 09 870 2000	Porthaninkatu 9	2011-06-20 00:00:00	7.96
Frank Ralston	+1 (312) 332-3232	162 E Superior Street	2012-09-27 00:00:00	7.96
Madalena Sampaio	+351 (225) 022-448	Rua dos Campeões Europeus de Viena, 4350	2011-01-17 00:00:00	5.94
Mark Philips	+1 (780) 434-4554	8210 111 ST NW	2011-02-17 00:00:00	5.94
Emma Jones	+44 020 7707 0707	202 Hoxton Street	2011-03-20 00:00:00	5.94
Martha Silk	+1 (902) 450-0450	194A Chain Lake Drive	2011-04-20 00:00:00	5.94
Eduardo Martins	+55 (11) 3033-5446	Rua Dr. Falcão Filho, 155	2011-05-21 00:00:00	5.94
Patrick Gray	+1 (520) 622-4200	1033 N Park Ave	2011-07-22 00:00:00	5.94
Helena Holý	+420 2 4177 0449	Rilská 3174/6	2011-08-22 00:00:00	5.94
Terhi Hämäläinen	+358 09 870 2000	Porthaninkatu 9	2011-09-22 00:00:00	5.94
John Gordon	+1 (617) 522-1333	69 Salem Street	2011-10-23 00:00:00	5.94
Leonie Köhler	+49 0711 2842222	Theodor-Heuss-Straße 34	2011-11-23 00:00:00	5.94
Dominique Lefebvre	+33 01 47 42 71 71	8, Rue Hanovre	2011-12-24 00:00:00	5.94
Tim Goyer	+1 (408) 996-1010	1 Infinite Loop	2012-01-24 00:00:00	5.94
Luis Rojas	+56 (0)2 635 4444	Calle Lira, 198	2012-02-24 00:00:00	5.94
Hannah Schneider	+49 030 26550280	Tauentzienstraße 8	2012-03-26 00:00:00	5.94
Jennifer Peterson	+1 (604) 688-2255	700 W Pender Street	2012-04-26 00:00:00	5.94
Phil Hughes	+44 020 7976 5722	113 Lupus St	2012-05-27 00:00:00	5.94
Aaron Mitchell	+1 (204) 452-6452	696 Osborne Street	2012-06-27 00:00:00	5.94
Alexandre Rocha	+55 (11) 3055-3278	Av. Paulista, 2022	2012-07-28 00:00:00	5.94
Stanisław Wójcik	+48 22 828 37 39	Ordynacka 10	2012-08-28 00:00:00	5.94
Astrid Gruber	+43 01 5134505	Rotenturmstraße 4, 1010 Innere Stadt	2012-10-29 00:00:00	5.94
Ladislav Kovács		Erzsébet krt. 58.	2012-11-29 00:00:00	5.94
Frank Ralston	+1 (312) 332-3232	162 E Superior Street	2012-12-30 00:00:00	5.94
Wyatt Girard	+33 05 56 96 96 96	9, Place Louis Barthou	2011-06-19 00:00:00	3.98
Dan Miller	+1 (650) 644-3358	541 Del Medio Avenue	2012-09-26 00:00:00	3.98
Heather Leacock	+1 (407) 999-7788	120 S Orange Ave	2012-09-26 00:00:00	3.98
Martha Silk	+1 (902) 450-0450	194A Chain Lake Drive	2011-01-16 00:00:00	3.96
Eduardo Martins	+55 (11) 3033-5446	Rua Dr. Falcão Filho, 155	2011-02-16 00:00:00	3.96
Johannes Van der Berg	+31 020 6223130	Lijnbaansgracht 120bg	2011-03-19 00:00:00	3.96
Patrick Gray	+1 (520) 622-4200	1033 N Park Ave	2011-04-19 00:00:00	3.96
Helena Holý	+420 2 4177 0449	Rilská 3174/6	2011-05-20 00:00:00	3.96
John Gordon	+1 (617) 522-1333	69 Salem Street	2011-07-21 00:00:00	3.96
Leonie Köhler	+49 0711 2842222	Theodor-Heuss-Straße 34	2011-08-21 00:00:00	3.96
Dominique Lefebvre	+33 01 47 42 71 71	8, Rue Hanovre	2011-09-21 00:00:00	3.96
Tim Goyer	+1 (408) 996-1010	1 Infinite Loop	2011-10-22 00:00:00	3.96
Luis Rojas	+56 (0)2 635 4444	Calle Lira, 198	2011-11-22 00:00:00	3.96
Hannah Schneider	+49 030 26550280	Tauentzienstraße 8	2011-12-23 00:00:00	3.96
Jennifer Peterson	+1 (604) 688-2255	700 W Pender Street	2012-01-23 00:00:00	3.96
Phil Hughes	+44 020 7976 5722	113 Lupus St	2012-02-23 00:00:00	3.96
Aaron Mitchell	+1 (204) 452-6452	696 Osborne Street	2012-03-25 00:00:00	3.96
Alexandre Rocha	+55 (11) 3055-3278	Av. Paulista, 2022	2012-04-25 00:00:00	3.96
Stanisław Wójcik	+48 22 828 37 39	Ordynacka 10	2012-05-26 00:00:00	3.96
Julia Barnett	+1 (801) 531-7272	302 S 700 E	2012-06-26 00:00:00	3.96
Astrid Gruber	+43 01 5134505	Rotenturmstraße 4, 1010 Innere Stadt	2012-07-27 00:00:00	3.96
Ladislav Kovács		Erzsébet krt. 58.	2012-08-27 00:00:00	3.96
François Tremblay	+1 (514) 721-4711	1498 rue Bélanger	2012-10-28 00:00:00	3.96
Marc Dubois	+33 04 78 30 30 30	11, Place Bellecour	2012-11-28 00:00:00	3.96
Dan Miller	+1 (650) 644-3358	541 Del Medio Avenue	2012-12-29 00:00:00	3.96
Dominique Lefebvre	+33 01 47 42 71 71	8, Rue Hanovre	2011-06-19 00:00:00	2.98
Camille Bernard	+33 01 49 70 65 65	4, Rue Milton	2011-06-06 00:00:00	1.99
Tim Goyer	+1 (408) 996-1010	1 Infinite Loop	2012-09-13 00:00:00	1.99
Patrick Gray	+1 (520) 622-4200	1033 N Park Ave	2011-01-15 00:00:00	1.98
Robert Brown	+1 (416) 363-8888	796 Dundas Street West	2011-01-15 00:00:00	1.98
Helena Holý	+420 2 4177 0449	Rilská 3174/6	2011-02-15 00:00:00	1.98
Daan Peeters	+32 02 219 03 03	Grétrystraat 63	2011-02-15 00:00:00	1.98
Terhi Hämäläinen	+358 09 870 2000	Porthaninkatu 9	2011-03-18 00:00:00	1.98
Hugh O'Reilly	+353 01 6792424	3 Chatham Street	2011-03-18 00:00:00	1.98
John Gordon	+1 (617) 522-1333	69 Salem Street	2011-04-18 00:00:00	1.98
Victor Stevens	+1 (608) 257-0597	319 N. Frances Street	2011-04-18 00:00:00	1.98
Leonie Köhler	+49 0711 2842222	Theodor-Heuss-Straße 34	2011-05-19 00:00:00	1.98
Bjørn Hansen	+47 22 44 22 22	Ullevålsveien 14	2011-05-19 00:00:00	1.98
Tim Goyer	+1 (408) 996-1010	1 Infinite Loop	2011-07-20 00:00:00	1.98
Kathy Chase	+1 (775) 223-7665	801 W 4th Street	2011-07-20 00:00:00	1.98
Luis Rojas	+56 (0)2 635 4444	Calle Lira, 198	2011-08-20 00:00:00	1.98
Puja Srivastava	+91 080 22289999	3,Raj Bhavan Road	2011-08-20 00:00:00	1.98
Hannah Schneider	+49 030 26550280	Tauentzienstraße 8	2011-09-20 00:00:00	1.98
Niklas Schröder	+49 030 2141444	Barbarossastraße 19	2011-09-20 00:00:00	1.98
Jennifer Peterson	+1 (604) 688-2255	700 W Pender Street	2011-10-21 00:00:00	1.98
Jack Smith	+1 (425) 882-8080	1 Microsoft Way	2011-10-21 00:00:00	1.98
Phil Hughes	+44 020 7976 5722	113 Lupus St	2011-11-21 00:00:00	1.98
Mark Taylor	+61 (02) 9332 3633	421 Bourke Street	2011-11-21 00:00:00	1.98
Aaron Mitchell	+1 (204) 452-6452	696 Osborne Street	2011-12-22 00:00:00	1.98
João Fernandes	+351 (213) 466-111	Rua da Assunção 53	2011-12-22 00:00:00	1.98
Alexandre Rocha	+55 (11) 3055-3278	Av. Paulista, 2022	2012-01-22 00:00:00	1.98
Fernanda Ramos	+55 (61) 3363-5547	Qe 7 Bloco G	2012-01-22 00:00:00	1.98
Stanisław Wójcik	+48 22 828 37 39	Ordynacka 10	2012-02-22 00:00:00	1.98
Joakim Johansson	+46 08-651 52 52	Celsiusg. 9	2012-02-22 00:00:00	1.98
Julia Barnett	+1 (801) 531-7272	302 S 700 E	2012-03-24 00:00:00	1.98
Edward Francis	+1 (613) 234-3322	230 Elgin Street	2012-03-24 00:00:00	1.98
Astrid Gruber	+43 01 5134505	Rotenturmstraße 4, 1010 Innere Stadt	2012-04-24 00:00:00	1.98
Kara Nielsen	+453 3331 9991	Sønder Boulevard 51	2012-04-24 00:00:00	1.98
Ladislav Kovács		Erzsébet krt. 58.	2012-05-25 00:00:00	1.98
Lucas Mancini	+39 06 39733434	Via Degli Scipioni, 43	2012-05-25 00:00:00	1.98
Frank Ralston	+1 (312) 332-3232	162 E Superior Street	2012-06-25 00:00:00	1.98
Richard Cunningham	+1 (817) 924-7272	2211 W Berry Street	2012-06-25 00:00:00	1.98
François Tremblay	+1 (514) 721-4711	1498 rue Bélanger	2012-07-26 00:00:00	1.98
František Wichterlová	+420 2 4172 5555	Klanova 9/506	2012-07-26 00:00:00	1.98
Marc Dubois	+33 04 78 30 30 30	11, Place Bellecour	2012-08-26 00:00:00	1.98
Isabelle Mercier	+33 03 80 73 66 99	68, Rue Jouvence	2012-08-26 00:00:00	1.98
Manoj Pareek	+91 0124 39883988	12,Community Centre	2012-10-27 00:00:00	1.98
Luís Gonçalves	+55 (12) 3923-5555	Av. Brigadeiro Faria Lima, 2170	2012-10-27 00:00:00	1.98
Fynn Zimmermann	+49 069 40598889	Berger Straße 10	2012-11-27 00:00:00	1.98
Camille Bernard	+33 01 49 70 65 65	4, Rue Milton	2012-11-27 00:00:00	1.98
Frank Harris	+1 (650) 253-0000	1600 Amphitheatre Parkway	2012-12-28 00:00:00	1.98
Michelle Brooks	+1 (212) 221-3546	627 Broadway	2012-12-28 00:00:00	1.98
Richard Cunningham	+1 (817) 924-7272	2211 W Berry Street	2011-01-02 00:00:00	0.99
František Wichterlová	+420 2 4172 5555	Klanova 9/506	2011-02-02 00:00:00	0.99
Isabelle Mercier	+33 03 80 73 66 99	68, Rue Jouvence	2011-03-05 00:00:00	0.99
Heather Leacock	+1 (407) 999-7788	120 S Orange Ave	2011-04-05 00:00:00	0.99
Luís Gonçalves	+55 (12) 3923-5555	Av. Brigadeiro Faria Lima, 2170	2011-05-06 00:00:00	0.99
Michelle Brooks	+1 (212) 221-3546	627 Broadway	2011-07-07 00:00:00	0.99
Diego Gutiérrez	+54 (0)11 4311 4333	307 Macacha Güemes	2011-08-07 00:00:00	0.99
Madalena Sampaio	+351 (225) 022-448	Rua dos Campeões Europeus de Viena, 4350	2011-09-07 00:00:00	0.99
Mark Philips	+1 (780) 434-4554	8210 111 ST NW	2011-10-08 00:00:00	0.99
Emma Jones	+44 020 7707 0707	202 Hoxton Street	2011-11-08 00:00:00	0.99
Martha Silk	+1 (902) 450-0450	194A Chain Lake Drive	2011-12-09 00:00:00	0.99
Eduardo Martins	+55 (11) 3033-5446	Rua Dr. Falcão Filho, 155	2012-01-09 00:00:00	0.99
Johannes Van der Berg	+31 020 6223130	Lijnbaansgracht 120bg	2012-02-09 00:00:00	0.99
Patrick Gray	+1 (520) 622-4200	1033 N Park Ave	2012-03-11 00:00:00	0.99
Helena Holý	+420 2 4177 0449	Rilská 3174/6	2012-04-11 00:00:00	0.99
Terhi Hämäläinen	+358 09 870 2000	Porthaninkatu 9	2012-05-12 00:00:00	0.99
John Gordon	+1 (617) 522-1333	69 Salem Street	2012-06-12 00:00:00	0.99
Leonie Köhler	+49 0711 2842222	Theodor-Heuss-Straße 34	2012-07-13 00:00:00	0.99
Dominique Lefebvre	+33 01 47 42 71 71	8, Rue Hanovre	2012-08-13 00:00:00	0.99
Luis Rojas	+56 (0)2 635 4444	Calle Lira, 198	2012-10-14 00:00:00	0.99
Hannah Schneider	+49 030 26550280	Tauentzienstraße 8	2012-11-14 00:00:00	0.99
Jennifer Peterson	+1 (604) 688-2255	700 W Pender Street	2012-12-15 00:00:00	0.99
*/

/* 
-- Challenge 2
-- 2.
*/ 

SELECT 
	c.FirstName||' '||c.LastName as CustomerFullName, 
	c.Phone as CustomerContact, 
	c.Address as CustomerAddress, 
	i.total as TotalTransaction,
	i.InvoiceDate,
	e.FirstName||' '||e.LastName as EmployeeFullName
FROM Customer as c
INNER JOIN Invoice as i 
ON c.CustomerId = i.CustomerId
INNER JOIN Employee as e
ON c.SupportRepId = e.EmployeeId
WHERE InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
ORDER BY TotalTransaction DESC
;

/*John Doeein			1000.86	2011-11-01 00:00:00	Jane Peacock
Richard Cunningham	+1 (817) 924-7272	2211 W Berry Street	23.86	2012-08-05 00:00:00	Margaret Park
Hugh O'Reilly	+353 01 6792424	3 Chatham Street	21.86	2011-04-28 00:00:00	Jane Peacock
Victor Stevens	+1 (608) 257-0597	319 N. Frances Street	18.86	2011-05-29 00:00:00	Steve Johnson
František Wichterlová	+420 2 4172 5555	Klanova 9/506	16.86	2012-09-05 00:00:00	Margaret Park
Isabelle Mercier	+33 03 80 73 66 99	68, Rue Jouvence	16.86	2012-10-06 00:00:00	Jane Peacock
Bjørn Hansen	+47 22 44 22 22	Ullevålsveien 14	15.86	2011-06-29 00:00:00	Margaret Park
Fynn Zimmermann	+49 069 40598889	Berger Straße 10	14.91	2011-04-23 00:00:00	Jane Peacock
Enrique Muñoz	+34 914 454 454	C/ San Bernardo 85	13.86	2011-01-25 00:00:00	Steve Johnson
Robert Brown	+1 (416) 363-8888	796 Dundas Street West	13.86	2011-02-25 00:00:00	Jane Peacock
Daan Peeters	+32 02 219 03 03	Grétrystraat 63	13.86	2011-03-28 00:00:00	Margaret Park
Wyatt Girard	+33 05 56 96 96 96	9, Place Louis Barthou	13.86	2011-07-30 00:00:00	Jane Peacock
Kathy Chase	+1 (775) 223-7665	801 W 4th Street	13.86	2011-08-30 00:00:00	Steve Johnson
Puja Srivastava	+91 080 22289999	3,Raj Bhavan Road	13.86	2011-09-30 00:00:00	Jane Peacock
Niklas Schröder	+49 030 2141444	Barbarossastraße 19	13.86	2011-10-31 00:00:00	Jane Peacock
Jack Smith	+1 (425) 882-8080	1 Microsoft Way	13.86	2011-12-01 00:00:00	Steve Johnson
Mark Taylor	+61 (02) 9332 3633	421 Bourke Street	13.86	2012-01-01 00:00:00	Margaret Park
João Fernandes	+351 (213) 466-111	Rua da Assunção 53	13.86	2012-02-01 00:00:00	Margaret Park
Fernanda Ramos	+55 (61) 3363-5547	Qe 7 Bloco G	13.86	2012-03-03 00:00:00	Margaret Park
Joakim Johansson	+46 08-651 52 52	Celsiusg. 9	13.86	2012-04-03 00:00:00	Steve Johnson
Edward Francis	+1 (613) 234-3322	230 Elgin Street	13.86	2012-05-04 00:00:00	Jane Peacock
Kara Nielsen	+453 3331 9991	Sønder Boulevard 51	13.86	2012-06-04 00:00:00	Margaret Park
Lucas Mancini	+39 06 39733434	Via Degli Scipioni, 43	13.86	2012-07-05 00:00:00	Steve Johnson
Heather Leacock	+1 (407) 999-7788	120 S Orange Ave	13.86	2012-11-06 00:00:00	Margaret Park
Luís Gonçalves	+55 (12) 3923-5555	Av. Brigadeiro Faria Lima, 2170	13.86	2012-12-07 00:00:00	Jane Peacock
Julia Barnett	+1 (801) 531-7272	302 S 700 E	11.94	2012-09-28 00:00:00	Steve Johnson
Jack Smith	+1 (425) 882-8080	1 Microsoft Way	10.91	2012-07-31 00:00:00	Steve Johnson
João Fernandes	+351 (213) 466-111	Rua da Assunção 53	10.91	2012-10-01 00:00:00	Margaret Park
Johannes Van der Berg	+31 020 6223130	Lijnbaansgracht 120bg	8.94	2011-06-21 00:00:00	Steve Johnson
Marc Dubois	+33 04 78 30 30 30	11, Place Bellecour	8.91	2011-01-20 00:00:00	Steve Johnson
Dan Miller	+1 (650) 644-3358	541 Del Medio Avenue	8.91	2011-02-20 00:00:00	Margaret Park
Manoj Pareek	+91 0124 39883988	12,Community Centre	8.91	2011-03-23 00:00:00	Jane Peacock
Frank Harris	+1 (650) 253-0000	1600 Amphitheatre Parkway	8.91	2011-05-24 00:00:00	Margaret Park
Steve Murray	+44 0131 315 3300	110 Raeburn Pl	8.91	2011-06-24 00:00:00	Steve Johnson
Ellie Sullivan	+1 (867) 920-2233	5112 48 Street	8.91	2011-07-25 00:00:00	Jane Peacock
Roberto Almeida	+55 (21) 2271-7000	Praça Pio X, 119	8.91	2011-08-25 00:00:00	Jane Peacock
Enrique Muñoz	+34 914 454 454	C/ San Bernardo 85	8.91	2011-09-25 00:00:00	Steve Johnson
Robert Brown	+1 (416) 363-8888	796 Dundas Street West	8.91	2011-10-26 00:00:00	Jane Peacock
Daan Peeters	+32 02 219 03 03	Grétrystraat 63	8.91	2011-11-26 00:00:00	Margaret Park
Hugh O'Reilly	+353 01 6792424	3 Chatham Street	8.91	2011-12-27 00:00:00	Jane Peacock
Victor Stevens	+1 (608) 257-0597	319 N. Frances Street	8.91	2012-01-27 00:00:00	Steve Johnson
Bjørn Hansen	+47 22 44 22 22	Ullevålsveien 14	8.91	2012-02-27 00:00:00	Margaret Park
Wyatt Girard	+33 05 56 96 96 96	9, Place Louis Barthou	8.91	2012-03-29 00:00:00	Jane Peacock
Kathy Chase	+1 (775) 223-7665	801 W 4th Street	8.91	2012-04-29 00:00:00	Steve Johnson
Puja Srivastava	+91 080 22289999	3,Raj Bhavan Road	8.91	2012-05-30 00:00:00	Jane Peacock
Niklas Schröder	+49 030 2141444	Barbarossastraße 19	8.91	2012-06-30 00:00:00	Jane Peacock
Mark Taylor	+61 (02) 9332 3633	421 Bourke Street	8.91	2012-08-31 00:00:00	Margaret Park
Fernanda Ramos	+55 (61) 3363-5547	Qe 7 Bloco G	8.91	2012-11-01 00:00:00	Margaret Park
Joakim Johansson	+46 08-651 52 52	Celsiusg. 9	8.91	2012-12-02 00:00:00	Steve Johnson
Terhi Hämäläinen	+358 09 870 2000	Porthaninkatu 9	7.96	2011-06-20 00:00:00	Jane Peacock
Frank Ralston	+1 (312) 332-3232	162 E Superior Street	7.96	2012-09-27 00:00:00	Jane Peacock
Madalena Sampaio	+351 (225) 022-448	Rua dos Campeões Europeus de Viena, 4350	5.94	2011-01-17 00:00:00	Margaret Park
Mark Philips	+1 (780) 434-4554	8210 111 ST NW	5.94	2011-02-17 00:00:00	Steve Johnson
Emma Jones	+44 020 7707 0707	202 Hoxton Street	5.94	2011-03-20 00:00:00	Jane Peacock
Martha Silk	+1 (902) 450-0450	194A Chain Lake Drive	5.94	2011-04-20 00:00:00	Steve Johnson
Eduardo Martins	+55 (11) 3033-5446	Rua Dr. Falcão Filho, 155	5.94	2011-05-21 00:00:00	Margaret Park
Patrick Gray	+1 (520) 622-4200	1033 N Park Ave	5.94	2011-07-22 00:00:00	Margaret Park
Helena Holý	+420 2 4177 0449	Rilská 3174/6	5.94	2011-08-22 00:00:00	Steve Johnson
Terhi Hämäläinen	+358 09 870 2000	Porthaninkatu 9	5.94	2011-09-22 00:00:00	Jane Peacock
John Gordon	+1 (617) 522-1333	69 Salem Street	5.94	2011-10-23 00:00:00	Margaret Park
Leonie Köhler	+49 0711 2842222	Theodor-Heuss-Straße 34	5.94	2011-11-23 00:00:00	Steve Johnson
Dominique Lefebvre	+33 01 47 42 71 71	8, Rue Hanovre	5.94	2011-12-24 00:00:00	Margaret Park
Tim Goyer	+1 (408) 996-1010	1 Infinite Loop	5.94	2012-01-24 00:00:00	Jane Peacock
Luis Rojas	+56 (0)2 635 4444	Calle Lira, 198	5.94	2012-02-24 00:00:00	Steve Johnson
Hannah Schneider	+49 030 26550280	Tauentzienstraße 8	5.94	2012-03-26 00:00:00	Steve Johnson
Jennifer Peterson	+1 (604) 688-2255	700 W Pender Street	5.94	2012-04-26 00:00:00	Jane Peacock
Phil Hughes	+44 020 7976 5722	113 Lupus St	5.94	2012-05-27 00:00:00	Jane Peacock
Aaron Mitchell	+1 (204) 452-6452	696 Osborne Street	5.94	2012-06-27 00:00:00	Margaret Park
Alexandre Rocha	+55 (11) 3055-3278	Av. Paulista, 2022	5.94	2012-07-28 00:00:00	Steve Johnson
Stanisław Wójcik	+48 22 828 37 39	Ordynacka 10	5.94	2012-08-28 00:00:00	Margaret Park
Astrid Gruber	+43 01 5134505	Rotenturmstraße 4, 1010 Innere Stadt	5.94	2012-10-29 00:00:00	Steve Johnson
Ladislav Kovács		Erzsébet krt. 58.	5.94	2012-11-29 00:00:00	Jane Peacock
Frank Ralston	+1 (312) 332-3232	162 E Superior Street	5.94	2012-12-30 00:00:00	Jane Peacock
Wyatt Girard	+33 05 56 96 96 96	9, Place Louis Barthou	3.98	2011-06-19 00:00:00	Jane Peacock
Dan Miller	+1 (650) 644-3358	541 Del Medio Avenue	3.98	2012-09-26 00:00:00	Margaret Park
Heather Leacock	+1 (407) 999-7788	120 S Orange Ave	3.98	2012-09-26 00:00:00	Margaret Park
Martha Silk	+1 (902) 450-0450	194A Chain Lake Drive	3.96	2011-01-16 00:00:00	Steve Johnson
Eduardo Martins	+55 (11) 3033-5446	Rua Dr. Falcão Filho, 155	3.96	2011-02-16 00:00:00	Margaret Park
Johannes Van der Berg	+31 020 6223130	Lijnbaansgracht 120bg	3.96	2011-03-19 00:00:00	Steve Johnson
Patrick Gray	+1 (520) 622-4200	1033 N Park Ave	3.96	2011-04-19 00:00:00	Margaret Park
Helena Holý	+420 2 4177 0449	Rilská 3174/6	3.96	2011-05-20 00:00:00	Steve Johnson
John Gordon	+1 (617) 522-1333	69 Salem Street	3.96	2011-07-21 00:00:00	Margaret Park
Leonie Köhler	+49 0711 2842222	Theodor-Heuss-Straße 34	3.96	2011-08-21 00:00:00	Steve Johnson
Dominique Lefebvre	+33 01 47 42 71 71	8, Rue Hanovre	3.96	2011-09-21 00:00:00	Margaret Park
Tim Goyer	+1 (408) 996-1010	1 Infinite Loop	3.96	2011-10-22 00:00:00	Jane Peacock
Luis Rojas	+56 (0)2 635 4444	Calle Lira, 198	3.96	2011-11-22 00:00:00	Steve Johnson
Hannah Schneider	+49 030 26550280	Tauentzienstraße 8	3.96	2011-12-23 00:00:00	Steve Johnson
Jennifer Peterson	+1 (604) 688-2255	700 W Pender Street	3.96	2012-01-23 00:00:00	Jane Peacock
Phil Hughes	+44 020 7976 5722	113 Lupus St	3.96	2012-02-23 00:00:00	Jane Peacock
Aaron Mitchell	+1 (204) 452-6452	696 Osborne Street	3.96	2012-03-25 00:00:00	Margaret Park
Alexandre Rocha	+55 (11) 3055-3278	Av. Paulista, 2022	3.96	2012-04-25 00:00:00	Steve Johnson
Stanisław Wójcik	+48 22 828 37 39	Ordynacka 10	3.96	2012-05-26 00:00:00	Margaret Park
Julia Barnett	+1 (801) 531-7272	302 S 700 E	3.96	2012-06-26 00:00:00	Steve Johnson
Astrid Gruber	+43 01 5134505	Rotenturmstraße 4, 1010 Innere Stadt	3.96	2012-07-27 00:00:00	Steve Johnson
Ladislav Kovács		Erzsébet krt. 58.	3.96	2012-08-27 00:00:00	Jane Peacock
François Tremblay	+1 (514) 721-4711	1498 rue Bélanger	3.96	2012-10-28 00:00:00	Jane Peacock
Marc Dubois	+33 04 78 30 30 30	11, Place Bellecour	3.96	2012-11-28 00:00:00	Steve Johnson
Dan Miller	+1 (650) 644-3358	541 Del Medio Avenue	3.96	2012-12-29 00:00:00	Margaret Park
Dominique Lefebvre	+33 01 47 42 71 71	8, Rue Hanovre	2.98	2011-06-19 00:00:00	Margaret Park
Camille Bernard	+33 01 49 70 65 65	4, Rue Milton	1.99	2011-06-06 00:00:00	Margaret Park
Tim Goyer	+1 (408) 996-1010	1 Infinite Loop	1.99	2012-09-13 00:00:00	Jane Peacock
Patrick Gray	+1 (520) 622-4200	1033 N Park Ave	1.98	2011-01-15 00:00:00	Margaret Park
Robert Brown	+1 (416) 363-8888	796 Dundas Street West	1.98	2011-01-15 00:00:00	Jane Peacock
Helena Holý	+420 2 4177 0449	Rilská 3174/6	1.98	2011-02-15 00:00:00	Steve Johnson
Daan Peeters	+32 02 219 03 03	Grétrystraat 63	1.98	2011-02-15 00:00:00	Margaret Park
Terhi Hämäläinen	+358 09 870 2000	Porthaninkatu 9	1.98	2011-03-18 00:00:00	Jane Peacock
Hugh O'Reilly	+353 01 6792424	3 Chatham Street	1.98	2011-03-18 00:00:00	Jane Peacock
John Gordon	+1 (617) 522-1333	69 Salem Street	1.98	2011-04-18 00:00:00	Margaret Park
Victor Stevens	+1 (608) 257-0597	319 N. Frances Street	1.98	2011-04-18 00:00:00	Steve Johnson
Leonie Köhler	+49 0711 2842222	Theodor-Heuss-Straße 34	1.98	2011-05-19 00:00:00	Steve Johnson
Bjørn Hansen	+47 22 44 22 22	Ullevålsveien 14	1.98	2011-05-19 00:00:00	Margaret Park
Tim Goyer	+1 (408) 996-1010	1 Infinite Loop	1.98	2011-07-20 00:00:00	Jane Peacock
Kathy Chase	+1 (775) 223-7665	801 W 4th Street	1.98	2011-07-20 00:00:00	Steve Johnson
Luis Rojas	+56 (0)2 635 4444	Calle Lira, 198	1.98	2011-08-20 00:00:00	Steve Johnson
Puja Srivastava	+91 080 22289999	3,Raj Bhavan Road	1.98	2011-08-20 00:00:00	Jane Peacock
Hannah Schneider	+49 030 26550280	Tauentzienstraße 8	1.98	2011-09-20 00:00:00	Steve Johnson
Niklas Schröder	+49 030 2141444	Barbarossastraße 19	1.98	2011-09-20 00:00:00	Jane Peacock
Jennifer Peterson	+1 (604) 688-2255	700 W Pender Street	1.98	2011-10-21 00:00:00	Jane Peacock
Jack Smith	+1 (425) 882-8080	1 Microsoft Way	1.98	2011-10-21 00:00:00	Steve Johnson
Phil Hughes	+44 020 7976 5722	113 Lupus St	1.98	2011-11-21 00:00:00	Jane Peacock
Mark Taylor	+61 (02) 9332 3633	421 Bourke Street	1.98	2011-11-21 00:00:00	Margaret Park
Aaron Mitchell	+1 (204) 452-6452	696 Osborne Street	1.98	2011-12-22 00:00:00	Margaret Park
João Fernandes	+351 (213) 466-111	Rua da Assunção 53	1.98	2011-12-22 00:00:00	Margaret Park
Alexandre Rocha	+55 (11) 3055-3278	Av. Paulista, 2022	1.98	2012-01-22 00:00:00	Steve Johnson
Fernanda Ramos	+55 (61) 3363-5547	Qe 7 Bloco G	1.98	2012-01-22 00:00:00	Margaret Park
Stanisław Wójcik	+48 22 828 37 39	Ordynacka 10	1.98	2012-02-22 00:00:00	Margaret Park
Joakim Johansson	+46 08-651 52 52	Celsiusg. 9	1.98	2012-02-22 00:00:00	Steve Johnson
Julia Barnett	+1 (801) 531-7272	302 S 700 E	1.98	2012-03-24 00:00:00	Steve Johnson
Edward Francis	+1 (613) 234-3322	230 Elgin Street	1.98	2012-03-24 00:00:00	Jane Peacock
Astrid Gruber	+43 01 5134505	Rotenturmstraße 4, 1010 Innere Stadt	1.98	2012-04-24 00:00:00	Steve Johnson
Kara Nielsen	+453 3331 9991	Sønder Boulevard 51	1.98	2012-04-24 00:00:00	Margaret Park
Ladislav Kovács		Erzsébet krt. 58.	1.98	2012-05-25 00:00:00	Jane Peacock
Lucas Mancini	+39 06 39733434	Via Degli Scipioni, 43	1.98	2012-05-25 00:00:00	Steve Johnson
Frank Ralston	+1 (312) 332-3232	162 E Superior Street	1.98	2012-06-25 00:00:00	Jane Peacock
Richard Cunningham	+1 (817) 924-7272	2211 W Berry Street	1.98	2012-06-25 00:00:00	Margaret Park
François Tremblay	+1 (514) 721-4711	1498 rue Bélanger	1.98	2012-07-26 00:00:00	Jane Peacock
František Wichterlová	+420 2 4172 5555	Klanova 9/506	1.98	2012-07-26 00:00:00	Margaret Park
Marc Dubois	+33 04 78 30 30 30	11, Place Bellecour	1.98	2012-08-26 00:00:00	Steve Johnson
Isabelle Mercier	+33 03 80 73 66 99	68, Rue Jouvence	1.98	2012-08-26 00:00:00	Jane Peacock
Manoj Pareek	+91 0124 39883988	12,Community Centre	1.98	2012-10-27 00:00:00	Jane Peacock
Luís Gonçalves	+55 (12) 3923-5555	Av. Brigadeiro Faria Lima, 2170	1.98	2012-10-27 00:00:00	Jane Peacock
Fynn Zimmermann	+49 069 40598889	Berger Straße 10	1.98	2012-11-27 00:00:00	Jane Peacock
Camille Bernard	+33 01 49 70 65 65	4, Rue Milton	1.98	2012-11-27 00:00:00	Margaret Park
Frank Harris	+1 (650) 253-0000	1600 Amphitheatre Parkway	1.98	2012-12-28 00:00:00	Margaret Park
Michelle Brooks	+1 (212) 221-3546	627 Broadway	1.98	2012-12-28 00:00:00	Jane Peacock
Richard Cunningham	+1 (817) 924-7272	2211 W Berry Street	0.99	2011-01-02 00:00:00	Margaret Park
František Wichterlová	+420 2 4172 5555	Klanova 9/506	0.99	2011-02-02 00:00:00	Margaret Park
Isabelle Mercier	+33 03 80 73 66 99	68, Rue Jouvence	0.99	2011-03-05 00:00:00	Jane Peacock
Heather Leacock	+1 (407) 999-7788	120 S Orange Ave	0.99	2011-04-05 00:00:00	Margaret Park
Luís Gonçalves	+55 (12) 3923-5555	Av. Brigadeiro Faria Lima, 2170	0.99	2011-05-06 00:00:00	Jane Peacock
Michelle Brooks	+1 (212) 221-3546	627 Broadway	0.99	2011-07-07 00:00:00	Jane Peacock
Diego Gutiérrez	+54 (0)11 4311 4333	307 Macacha Güemes	0.99	2011-08-07 00:00:00	Margaret Park
Madalena Sampaio	+351 (225) 022-448	Rua dos Campeões Europeus de Viena, 4350	0.99	2011-09-07 00:00:00	Margaret Park
Mark Philips	+1 (780) 434-4554	8210 111 ST NW	0.99	2011-10-08 00:00:00	Steve Johnson
Emma Jones	+44 020 7707 0707	202 Hoxton Street	0.99	2011-11-08 00:00:00	Jane Peacock
Martha Silk	+1 (902) 450-0450	194A Chain Lake Drive	0.99	2011-12-09 00:00:00	Steve Johnson
Eduardo Martins	+55 (11) 3033-5446	Rua Dr. Falcão Filho, 155	0.99	2012-01-09 00:00:00	Margaret Park
Johannes Van der Berg	+31 020 6223130	Lijnbaansgracht 120bg	0.99	2012-02-09 00:00:00	Steve Johnson
Patrick Gray	+1 (520) 622-4200	1033 N Park Ave	0.99	2012-03-11 00:00:00	Margaret Park
Helena Holý	+420 2 4177 0449	Rilská 3174/6	0.99	2012-04-11 00:00:00	Steve Johnson
Terhi Hämäläinen	+358 09 870 2000	Porthaninkatu 9	0.99	2012-05-12 00:00:00	Jane Peacock
John Gordon	+1 (617) 522-1333	69 Salem Street	0.99	2012-06-12 00:00:00	Margaret Park
Leonie Köhler	+49 0711 2842222	Theodor-Heuss-Straße 34	0.99	2012-07-13 00:00:00	Steve Johnson
Dominique Lefebvre	+33 01 47 42 71 71	8, Rue Hanovre	0.99	2012-08-13 00:00:00	Margaret Park
Luis Rojas	+56 (0)2 635 4444	Calle Lira, 198	0.99	2012-10-14 00:00:00	Steve Johnson
Hannah Schneider	+49 030 26550280	Tauentzienstraße 8	0.99	2012-11-14 00:00:00	Steve Johnson
Jennifer Peterson	+1 (604) 688-2255	700 W Pender Street	0.99	2012-12-15 00:00:00	Jane Peacock
*/

/* 
-- Challenge 2
-- 3. - subquery
*/  

SELECT count(*) as TotalNumberOfTransactionsAboveAvgTransaction
FROM Invoice
WHERE total > 
(SELECT round(avg(total),2) as [Avg Transaction Amount] 
FROM Invoice 
WHERE InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31')
AND 
InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31';
--26 

/* 
-- Challenge 2
-- 4. 
*/  

SELECT  round(avg(total),2) as [Average Annual Transaction Amount], strftime('%Y', InvoiceDate) AS Year
FROM Invoice
GROUP BY strftime('%Y', InvoiceDate);

/*5.42	2009
5.8	2010
17.51	2011
5.75	2012
5.63	2013
*/

/* 
-- Challenge 3
-- 1. 
*/  

SELECT 
	e.EmployeeId,
	e.FirstName || ' ' || e.LastName AS [EmployeeName], 
	sum(i.total) AS [total sale transaction]
FROM Employee AS e 
INNER JOIN Customer AS c
    ON e.EmployeeId = c.SupportRepId 
INNER JOIN Invoice AS i 
    ON c.CustomerId = i.CustomerId
WHERE i.total > 
	(SELECT round(avg(total), 2) AS [Average Annual Transaction Amount]
	 FROM Invoice
	 WHERE InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31')
AND i.InvoiceDate >= '2011-01-01' AND i.InvoiceDate <= '2012-12-31'
GROUP BY
    e.EmployeeId,
    e.FirstName,
    e.LastName
ORDER BY e.LastName;

/*5	Steve Johnson	100.1
4	Margaret Park	139.74
3	Jane Peacock	1137.65
*/

/* 
-- Challenge 3
-- 2. 
*/  
SELECT 
	e.EmployeeId, 
	e.FirstName||' ' ||e.LastName as [EmployeeName], 
	sum(i.total) as [total sale transaction], 
	round((.15*sum(i.total))) as [Commision Payout]
FROM Employee as e 
INNER JOIN Customer as c
ON e.EmployeeId = c.SupportRepId 
INNER JOIN Invoice as i 
ON c.CustomerId = i.CustomerId
WHERE  InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
GROUP BY e.EmployeeId
ORDER BY e.LastName;

/*5	Steve Johnson	293.2	44.0
4	Margaret Park	322.97	48.0
3	Jane Peacock	1331.8	200.0
*/

/* 
-- Challenge 3
-- 3. 
*/  
SELECT 
	e.EmployeeId, 
	e.FirstName||' ' ||e.LastName as [EmployeeName], 
	sum(i.total) as [total sale transaction], 
	round((.15*sum(i.total))) as [Commision Payout]
FROM Employee as e 
INNER JOIN Customer as c
ON e.EmployeeId = c.SupportRepId 
INNER JOIN Invoice as i 
ON c.CustomerId = i.CustomerId
WHERE  InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
GROUP BY e.EmployeeId
ORDER BY [Commision Payout] DESC;

/*3	Jane Peacock	1331.8	200.0
4	Margaret Park	322.97	48.0
5	Steve Johnson	293.2	44.0
*/
-- Jane Peacock had the highest commission 

/* 
-- Challenge 3
-- 4. 
*/  

SELECT c.FirstName||' ' ||c.LastName as [CustomerName]
FROM Customer as c
INNER JOIN Employee as e
ON c.SupportRepId = e.EmployeeId
WHERE e.FirstName||' '|| e.LastName= 'Jane Peacock'
ORDER BY c.LastName;

/*Roberto Almeida
Michelle Brooks
Robert Brown
John Doeein
Edward Francis
Wyatt Girard
Luís Gonçalves
Tim Goyer
Phil Hughes
Terhi Hämäläinen
Emma Jones
Ladislav Kovács
Isabelle Mercier
Hugh O'Reilly
Manoj Pareek
Jennifer Peterson
Frank Ralston
Niklas Schröder
Puja Srivastava
Ellie Sullivan
François Tremblay
Fynn Zimmermann
*/

/* 
-- Challenge 3
-- 5. 
*/  

SELECT c.FirstName||' ' ||c.LastName as [CustomerName], sum(i.total) as [Total sum of purchase]
FROM Invoice as i 
INNER JOIN Customer as c 
on i.CustomerId = c.CustomerId
INNER JOIN Employee as e
ON c.SupportRepId = e.EmployeeId
WHERE e.FirstName||' '|| e.LastName= 'Jane Peacock'
GROUP by [CustomerName]
ORDER BY  [Total sum of purchase] DESC;

/*John Doeein	1000.86
Ladislav Kovács	45.62
Hugh O'Reilly	45.62
Fynn Zimmermann	43.62
Frank Ralston	43.62
Terhi Hämäläinen	41.62
Isabelle Mercier	40.62
Wyatt Girard	39.62
Luís Gonçalves	39.62
François Tremblay	39.62
Tim Goyer	38.62
Manoj Pareek	38.62
Jennifer Peterson	38.62
Roberto Almeida	37.62
Robert Brown	37.62
Phil Hughes	37.62
Niklas Schröder	37.62
Michelle Brooks	37.62
Emma Jones	37.62
Ellie Sullivan	37.62
Edward Francis	37.62
Puja Srivastava	36.64
*/

/* 
-- Challenge 3
-- 6. 
*/  

SELECT *
FROM Customer
WHERE FirstName||' ' ||LastName = 'John Dooein';

-- no record 


/*Jane Peacock is our primary person of interest as she earned the highest commission and her 
top-performing customer has no prior transaction history*/


 