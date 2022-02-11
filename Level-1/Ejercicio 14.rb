#ejercicio 14 Adivina varios intentos

numero = rand(1...10)
for i in 0..2
print "Adivina el numero que estoy pensado: "
numAdi = gets.chomp.to_i
    if numAdi == numero
        puts "Eres un mago, Felicidades es el numero correcto"
        break
    else 
        puts "Lo siento es complicado, intentalo mas tarde"
    end
end
