from time import sleep
x = input(">>>")
while True:
	#Odgovor1
	if "zdravo" in x.lower().strip():
		print ("Zravo jas sum PAI(Python AI)")
		x = input(">>>")
	#Odgovor2
	elif "koj e" in x.lower().strip():
		print ("Mojot kreator e Blagojche Grujovski student na FIKT vo Bitola")
		x = input(">>>")
	#Odgovor3
	elif "kako" in x.lower().strip() and "si" in x.lower().strip():
		print ("Dobro, zavisi do mojot Softver" )
		x = input(">>>")
	#Odgovor4
	elif "jazik" in x.lower().strip():
		print ("Jas ne sum vistinit AI, samo imam svoj jasik. Zboruvam preku listi, koi odkako ke gi procesitram od priroden jazik generiram soodveten odgovor...:)")
		x = input(">>>")
	#Odgovor5
	elif "cao" in x.lower().strip():
		print("Dogledanje ti blagodaram sto zboruvase so mene :)" )
		x = input(">>>")
	else:
		print("Ne ve razbiram..?"); sleep(0.1)
		print ("Mora da vnesite soodveten vnes za PAI da razbere..")
		x = input(">>>")