#ejercicio 1 Repite
print "Ingresa una frase: "
phrase = gets.chomp
puts phrase

#ejercicio 2 Saluda
print "Escribe tu nombre bb: "
nombreBB = gets.chomp
puts "Hola #{nombreBB}"  

#ejercicio 3 suma
print "Ingrese primer numero: "
x = gets.chomp.to_i 
print "Ingrese segundo numero: "
y = gets.chomp.to_i
puts "El resultado es #{x + y }"

#ejercicio 4 ¿cual es mi edad?
print "En que año naciste: "
a = gets.chomp.to_i
puts "Tienes #{2021 - a} años"

#ejercicio 5  IBM
print "Ingrese su peso (kg): "
peso = gets.chomp.to_i
print "ingrese su altura (m): "
altura = gets.chomp.to_f
IBM = peso/(altura**2)
puts "tu IBM (indice de masa corporal) es: #{IBM.round(2)}"

#ejercicio 6 >10
print "Ingrese el numero: "
numero= gets.chomp.to_i
if  numero > 10
    puts "El numero es mayor a diez"
else
    puts "El nummero es menor o igual a diez"
end

#ejercicio 7 Adivinar
numero = rand(1...10)
print "Adivina el numero que estoy pensado: "
numAdi = gets.chomp.to_i
if numAdi == numero
    puts "Eres un mago, Felicidades es el numero correcto"
else 
    puts "Lo siento es complicado, intentalo mas tarde"
end

#ejercicio 8 multiplo de 5
print "Ingrese un numero: "
num = gets.chomp.to_i
if num % 5 == 0
    puts "Excelente, el numero #{num} es multiplo de 5"
else 
    puts "No, el numero #{num} no es multiplo de 5"
end

#ejercicio 9 <=>

print "ingrese un numero: "
num= gets.chomp.to_i
if num == 10
    puts "El numeor ingresado es igual a 10"
    elsif num > 10
        puts "El numero ingresado mayor que 10"
    else
        puts "El numero ingresado es menor que 10"
    end


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


#ejercicio 12 Repite varias veces

print "Ingrese una frase: "
phrase = gets.chomp
print "numero de veces: "
numero = gets.chomp.to_i
numero.times do
    puts phrase
end


#ejercicio 13 Rango

print "Ingrese el limite inferior: "
inf= gets.chomp.to_i
print "Ingrese el limite superior: "
sup= gets.chomp.to_i
for i in inf..sup
    puts i
end


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


#ejercicio 15  Imprime la lista

print "Ingresa el numero de personas: "
num = gets.chomp.to_i
names = []

num.times do |i|
    print "Persona #{i+1}: "
    names << gets.chomp
    end

    puts 
    names.each_with_index do |name, i|
        puts "El nombre en la posición #{i} es #{name}"
    end


#ejercicio 16 Escalera

print "Ingresa un número: "
num = gets.chomp.to_i

num.times do |n|
    puts "#" * (n+1)
end


print "escalera invertida: "
paso = gets.chomp.to_i
for i in 1..paso
    if paso < i
        puts "#"*i
        break
        else
            puts "#"*(i)
        end
end


#ejercicio 17 Orden aleatorio 

print "Ingresa el número de personas: "
num = gets.chomp.to_i

names = []
num.times do |i|
    print "Persona #{i+1}: "
    names << gets.chomp
end

puts names.shuffle.inspect


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


#ejercicio 20 Todos son 5

def todos_son_5(arr)
    return false if arr.length == 0
    arr.each do |e|
    return false if e != 5
    end

    true
end

puts todos_son_5([5, 5, 5]) # true
puts todos_son_5([5, 5, 5, 5, 5, 5]) # true
puts todos_son_5([5, 4, 5]) # false
puts todos_son_5([]) # false
puts todos_son_5([5, "5", 5]) # false

