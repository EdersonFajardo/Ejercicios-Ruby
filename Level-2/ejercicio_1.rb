#ejercicio 1 likes
print "Ingrese sus likes: "
num = gets.chomp.to_i
def numero_de_likes(num)
    if num < 1000
        "#{num}"
    elsif num < 1_000_000
        "#{num / 1000}K"
    else
        "#{num / 1_000_000}M"
    end
end


puts numero_de_likes(num) # "num"

