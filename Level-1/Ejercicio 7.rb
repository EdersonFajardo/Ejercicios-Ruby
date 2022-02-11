#ejercicio 7 Adivinar
numero = rand(1...10)
print "Adivina el numero que estoy pensado: "
numAdi = gets.chomp.to_i
if numAdi == numero
    puts "Eres un mago, Felicidades es el numero correcto"
else 
    puts "Lo siento es complicado, intentalo mas tarde"
end
