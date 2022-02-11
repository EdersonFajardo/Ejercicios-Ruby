#ejercicio 10 IBM 2.0

print "Ingrese su peso (kg): "
peso = gets.chomp.to_i
print "ingrese su altura (m): "
altura = gets.chomp.to_f
IBM = peso/(altura**2)
puts "tu IBM (indice de masa corporal) es: #{IBM.round(2)}"
if IBM < 18.5
    puts "Bajo de peso, mejora tu alimentacion"
    elsif IBM < 25
        puts "Peso ideal, Excelente por ti"
        elsif IBM < 30
            puts "Sobre peso, es hora de hacer algunos cambios"
        else
            puts "Obesidad, esto es peligroso"
        end