#ejercicio 18 Traductor

dict = {
    "uno" => "one",
    "dos" => "two",
    "tres" => "three",
    "cuatro" => "four",
    "cinco" => "five",
    "seis" => "six",
    "siete" => "seven",
    "ocho" => "eight",
    "nueve" => "nine",
    "diez" => "ten",
}

print "Escribe el numero que deseas traducir (del 1 al 10): "
word = gets.chomp

if dict[word]
    puts "La traducción es: #{dict[word]}"
else
    puts "No encontramos la traducción de #{word}"
end
