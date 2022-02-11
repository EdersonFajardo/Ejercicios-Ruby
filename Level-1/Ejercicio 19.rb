#ejercicio 19 Saludo

print "Introduce nombre para saludo: "
nombre= gets.chomp

def Saludo(nombre)
    if nombre == "Juan Carlos"
    puts "Estoy con el demonio  #{nombre} a la guacala como estas chupa pija"
    else 
        puts "Hola #{nombre}"
    end
end
Saludo(nombre)
