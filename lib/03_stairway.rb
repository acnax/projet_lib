


def menu()
	
	begin
		print "Tu viens jouer à un super jeu : Y or N ? > "
		choix = gets.chomp
	
	end until(choix == 'y' || choix == 'n' || choix == 'Y' || choix == 'N')

	if(choix == 'N' || choix == 'n')
		print "Tu viens pour des stats : Y or N ? > "
		choix2 = gets.chomp
		if choix2 == 'Y' || choix2 == 'y'
			print "nombre de rotation voulu > "
			nbr_rotation = gets.chomp.to_i
			return average_finish_time(nbr_rotation)
		else
			return close()
		end
	else
		print "choix du pseudo > "
		user_name = gets.chomp
		return main_jeu(user_name)
	end
		
end

def close()

	puts "\nBye Bye"
	puts "place au super credit de 70 pages\n\n"
	puts "Fait par Jean mich pour patrick "
	puts "restez pas chez vous "
	
end

def main_jeu(username)
	nbr_tour = 0
	position_player = 0

	while(position_player != 10)
		nbr_random = rand(1..6)
		if(nbr_random == 1 && position_player != 0)
			position_player -= 1
			puts "tu descend d'une marche et tu es maintenant sur la marche #{position_player}"
		elsif(nbr_random >= 2 && nbr_random <= 4)
			puts "don't move ! tu es toujours sur la même marche..... marche : #{position_player}"
		else
			position_player += 1
			puts "Tu avances d'une marche et tu te retrouve sur la marche #{position_player}"
		end

		nbr_tour += 1
	end

	puts "\n Bravo #{username} tu as vaincu la pyramide en #{nbr_tour} tour"

	close()

end


def average_finish_time(nbr_parti)
	
	result_parti = []
	calcul_moy = 0

	nbr_parti.times do
		nbr_tour = 0
		position_player = 0
		while(position_player != 10)
			nbr_random = rand(1..6)
			if(nbr_random == 1 && position_player != 0)
				position_player -= 1
			elsif(nbr_random >=5)
				position_player += 1			
			end

			nbr_tour += 1
		end
		result_parti << nbr_tour
	end

	result_parti.each do |valeur|
		calcul_moy += valeur
	end
	puts "\nle nombre de tour moyen pour atteindre la 10eme marche est de #{calcul_moy/nbr_parti} tour"
	close()

end

def perform
	menu()
end


perform