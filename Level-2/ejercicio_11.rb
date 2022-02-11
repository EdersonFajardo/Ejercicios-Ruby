#ejercicio 11 arreglo a cadena 
#print "ingrese Cadena: "
#arreglo = gets.chomp

def arreglo_a_cadena(arr)
    arr.join(" ")
end

#puts arreglo_a_cadena([arreglo])
puts arreglo_a_cadena(["hola", "mundo"]) # "hola mundo"
puts arreglo_a_cadena(["Make", "it", "Real"]) # "Make it Real"
puts arreglo_a_cadena([]) # ""

