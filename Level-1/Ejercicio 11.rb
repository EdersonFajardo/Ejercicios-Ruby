
#ejercicio 11 generaciones

print "ingrese año de nacimiento: "
año = gets.chomp.to_i
if año < 1945
    puts "Gran generacion"
    elsif año < 1964
        puts "Baby boomer"
        elsif año < 1981
            puts "Generacion X"
            elsif año < 1994
                puts "Millenial"
            else
                puts "Generacion Z"
            end
