(defrule start
(declare (salience 900))
=>
(printout t crlf)
(printout t " **********************************" crlf)
(printout t " * Doznajte koj e vashiot *" crlf)
(printout t " * Horoskopski znak *" crlf)
(printout t " **********************************" crlf)
(printout t " * 1.Oven – od 21. mart do 20. april; *" crlf)
(printout t " * 2.Bik – od 21. april do 21. maj *" crlf)
(printout t " * 3.Bliznaci – od 22. maj do 21. juni; *" crlf)
(printout t " * 4.Rak – od 22. juni do 22. juli; *" crlf)
(printout t " * 5.Lav – od 23. juli do 22. avgust; *" crlf)
(printout t " * 6.Devica – od 23. avgust do 22. septemvri; *" crlf)
(printout t " * 7.Vaga – od 23. septemvi do 23.oktomvri; *" crlf)
(printout t " * 8.Škorpija – od 24. oktomvri do 22. noemvri; *" crlf)
(printout t " * 9.Strelec – od 23. noemvri do 21. dekrmvri; *" crlf)
(printout t " * 10.Jarec – od 22. dekemvri do 20. januari; *" crlf)
(printout t " * 11.Vodolija – od 21. januari do 19. februari; *" crlf)
(printout t " * 12.Ribi – od 20. februari do 20. mart; *" crlf)
(printout t " **********************************" crlf)
)

(deftemplate zodiac
	(slot ime (type STRING))
	(slot prezime(type STRING))
	(slot den(type INTEGER))
	(slot mesec(type INTEGER))
	
	
)

(defrule input
	(initial-fact)
	=>
	(printout t "Vasheto Ime: ")
	(assert (ime (read)))
	(printout t "Vasheto Prezime: ")
	(assert (prezime (read)))
	(printout t "Na koj datum ste rodeni(Den): ")
	(assert (den (read)))
	(printout t "Vo koj mesec ste rodeni: ")
	(assert (mesec (read)))
)

(defrule output
	(ime ?ime)
	(prezime ?prez)
	(den ?den)
	(mesec ?mesec)
	=>
	(assert (zodiac(ime ?ime)(prezime ?prez)(den ?den)(mesec ?mesec)))
	(printout t ?ime " " ?prez " roden e na " ?den "." ?mesec crlf)
)

(defrule opseg
	(zodiac(ime ?ime)(prezime ?prez)(den ?den)(mesec ?mesec))
	=>
	(if (or(and(= ?mesec 12)(>= ?den 22)(<= ?den 31))(and(= ?mesec 1)(>= ?den 1)(<= ?den 19)))
		then
		(printout t ?ime " " ?prez " vie ste Jarec. " crlf)
		)
		else
		(if (or(and(= ?mesec 1)(>= ?den 20)(<= ?den 31))(and(= ?mesec 2)(>= ?den 1)(<= ?den 17)))
			then
			(printout t ?ime " " ?prez " vie ste Vodolija. " crlf)
			)
			else
			(if (or(and(= ?mesec 2)(>= ?den 18)(<= ?den 29))(and(= ?mesec 3)(>= ?den 1)(<= ?den 19)))
				then
				(printout t ?ime " " ?prez " vie ste Ribi. " crlf)
				)
				else
				(if (or(and(= ?mesec 3)(>= ?den 20)(<= ?den 31))(and(= ?mesec 4)(>= ?den 1)(<= ?den 19)))
					then
					(printout t ?ime " " ?prez " vie ste Oven. " crlf)
					)
					else
					(if (or(and(= ?mesec 4)(>= ?den 20)(<= ?den 30))(and(= ?mesec 5)(>= ?den 1)(<= ?den 20)))
						then
						(printout t ?ime " " ?prez " vie ste Bik. " crlf)
						)
						else
						(if (or(and(= ?mesec 5)(>= ?den 21)(<= ?den 31))(and(= ?mesec 6)(>= ?den 1)(<= ?den 20)))
							then
							(printout t ?ime " " ?prez " vie ste Bliznaci. " crlf)
							)
							else
							(if (or(and(= ?mesec 6)(>= ?den 21)(<= ?den 30))(and(= ?mesec 7)(>= ?den 1)(<= ?den 22)))
								then
								(printout t ?ime " " ?prez " vie ste Rak. " crlf)
								)
								else
								(if (or(and(= ?mesec 7)(>= ?den 23)(<= ?den 31))(and(= ?mesec 8)(>= ?den 1)(<= ?den 22)))
									then
									(printout t ?ime " " ?prez " vie ste Lav. " crlf)
									)
									else
									(if (or(and(= ?mesec 8)(>= ?den 23)(<= ?den 31))(and(= ?mesec 9)(>= ?den 1)(<= ?den 22)))
										then
										(printout t ?ime " " ?prez " vie ste Devica. " crlf)
										)
										else
										(if (or(and(= ?mesec 9)(>= ?den 23)(<= ?den 30))(and(= ?mesec 10)(>= ?den 1)(<= ?den 22)))
											then
											(printout t ?ime " " ?prez " vie ste Vaga. " crlf)
											)
											else
											(if (or(and(= ?mesec 10)(>= ?den 23)(<= ?den 31))(and(= ?mesec 11)(>= ?den 1)(<= ?den 21)))
												then
												(printout t ?ime " " ?prez " vie ste Skorpija. " crlf)
												)
												else
													(if (or(and(= ?mesec 11)(>= ?den 22)(<= ?den 30))(and(= ?mesec 12)(>= ?den 1)(<= ?den 21)))
														then
														(printout t ?ime " " ?prez " vie ste Strelec. " crlf)
														)	
)
	
	
	
	