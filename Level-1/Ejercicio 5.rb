#ejercicio 5  IBM
print "Ingrese su peso (kg): "
peso = gets.chomp.to_i
print "ingrese su altura (m): "
altura = gets.chomp.to_f
IBM = peso/(altura**2)
puts "tu IBM (indice de masa corporal) es: #{IBM.round(2)}"
