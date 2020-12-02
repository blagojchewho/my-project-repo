result(aleksandar, 9).
result(nikola, 10).
result(filip, 9).
result(aleksandra, 7).
result(angela, 10).
result(hristijan, 5).
result(goce, 5).
result(jane, 6).
result(gabriela, 6).
result(stefanija, 8).

get_result:-  %odkako ke se napise get_result se pisuva .

		write("Cij rezultat sakas da go doznaes ?"),nl, %odkako ke se napise imeto se pisuva .
		read(X),nl,
		result(X,Y),nl,
		write("Ova e ocenkata na studentot: "),nl,
		write(Y).
		