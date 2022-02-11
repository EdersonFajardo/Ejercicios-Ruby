#ejercicio 12 Repite varias veces

print "Ingrese una frase: "
phrase = gets.chomp
print "numero de veces: "
numero = gets.chomp.to_i
numero.times do
    puts phrase
end
