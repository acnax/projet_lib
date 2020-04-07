#Methode moitie de pyramide

def half_pyramid(nbr_etage)

	nbr_etage.times do |i|
		(nbr_etage-1-i).times do
			print " "
		end
		(i+1).times do
	 		print "#"
		end
		print "\n"
	end
end

#Methode pyramide prenium pour ramses

def full_pyramid(nbr_etage)
	nbr_etage.times do |i|
		(nbr_etage-1-i).times do
			print " "
		end
		(i+1).times do
	 		print "#"
	 	end
	 	i.times do
	 		print "#"
	 	end

		print "\n"
	end
end

#Methode j'ai cru une pyramide c'était un losange

def wtf_pyramid(nbr_etage)
	width_max = nbr_etage
	espace = nbr_etage/2

	nbr_etage.times do |i|
		if width_max > i
			(espace-i).times do
				print " "
			end
			(i+1).times do
		 		print "#"
		 	end
		 	i.times do
		 		print "#"
		 	end
		 	width_max -= 1
			print "\n"
			
		else  
			(i-width_max).times do
				print " "
			end
			(nbr_etage-2).times do
				print "#"
			end
			nbr_etage -= 2
			print "\n"

		end
	end

end


#Methode Gestion saisi utilisateur

def saisi()
	begin
		puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (1 à 25) ?"
		print " > "
		nbr_etage = gets.chomp.to_i
		if nbr_etage > 0 && nbr_etage < 26
            return nbr_etage
    end
	end until(nbr_etage > 0 && nbr_etage < 26)
end


def saisi_impair()
	begin
		puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (choisis un nombre impair) ?"
		print " > "
		nbr_etage = gets.chomp.to_i
		if nbr_etage.odd?
            return nbr_etage
    end
		
	end until(nbr_etage.odd?)
end



def perform
	wtf_pyramid(saisi_impair)
end

perform

