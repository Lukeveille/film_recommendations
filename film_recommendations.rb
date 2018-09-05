doc = "The Thin Blue Line"
drama = "The Color Purple"
comedy = "Knocked Up"
dramedy = "Sideways"
book = "The Alchemist"
watch = "You should watch "

def question(genre)
    q = "Do you enjoy #{genre}? y/n"
    puts q
    like = gets.chomp.downcase
    while like != "y" && like != "n"
        puts "Not a valid response, please answer y or n!\n#{q}"
        like = gets.chomp.downcase
    end
    return like
end

like_doc = question("Documentaries")
like_dram = question("Dramas")
like_com = question("Comedies")

if like_doc == "y"
    puts "#{watch}#{doc}"
elsif like_dram == "y" && like_com == "n"
    puts "#{watch}#{drama}"
elsif like_dram == "y" && like_com == "y"
    puts "#{watch}#{dramedy}"
elsif like_dram == "n" && like_com == "y"
    puts "#{watch}#{comedy}"
else
    puts "You should read #{book}"
end