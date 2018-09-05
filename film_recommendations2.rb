doc = "The Thin Blue Line"
drama = "The Color Purple"
comedy = "Knocked Up"
dramedy = "Sideways"
book = "The Alchemist"
watch = "You should watch "

def question(genre)
    q = "Rate your love of #{genre} from 1 to 5: "
    print q
    rating = gets.chomp.to_i
    while rating < 1 || rating > 5
        puts "Not a valid response!\n#{q}"
        rating = gets.chomp.to_i
    end
    return rating
end

doc_rating = question("Documentaries")
dram_rating = question("Dramas")
com_rating = question("Comedies")

if doc_rating > 3 || (doc_rating > dram_rating && doc_rating > com_rating)
    puts "#{watch}#{doc}"
elsif com_rating > 3 && dram_rating > 3
    puts "#{watch}#{dramedy}"
elsif com_rating < 4 && dram_rating > 3 || (dram_rating > doc_rating && dram_rating > com_rating)
    puts "#{watch}#{drama}"
elsif com_rating > 3 && dram_rating < 4 || (com_rating > doc_rating && com_rating > dram_rating)
    puts "#{watch}#{comedy}"
else
    puts "You should read #{book}"
end