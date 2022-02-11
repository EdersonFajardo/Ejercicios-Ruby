#ejercicio 8 multiplo de 5
print "Ingrese un numero: "
num = gets.chomp.to_i
if num % 5 == 0
    puts "Excelente, el numero #{num} es multiplo de 5"
else 
    puts "No, el numero #{num} no es multiplo de 5"
end
