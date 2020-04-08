require 'io/console'


def signup()

	print "Choisissez votre mot de passe : "
	user_password = STDIN.noecho(&:gets).chomp
	print "\n"
	return user_password

end

def login(real_pwd)
	puts "############### Login ###############"
		print "utilisateur : "
		user_name = gets.chomp
	
	begin	
		print "password : "
		password = STDIN.noecho(&:gets).chomp
		print "\n"
	end until(password == real_pwd)

	return welcome_screen(user_name)

end

def welcome_screen(username)
		x = 10

		x.times do |i|

			if(i == 0 || i == 9)
				60.times do
					print "#"
				end
			elsif((x/2) == i)
				print "Good Job #{username}"		
			else
				1.times do
					print "#"
				end
				58.times do 
					print " "
				end
				1.times do
					print "#"
				end
			end
			print "\n"
		end
end


def perform()
	login(signup)
end


perform