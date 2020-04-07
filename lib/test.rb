puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
x=gets.to_i
i=0
hashtag=" "
blank= x - 1 

puts "Voici ta pyramide :"
blank.times do |i|
    hashtag = hashtag*blank + "#"
puts hashtag 
end