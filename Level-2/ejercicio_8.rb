#ejercicio 8 Generar contraseñas
print "Ingrese contraseña: "
contra = gets.chomp

def contrasena(contra)
    contra = contra.gsub(" ", "")
    contra = contra.gsub("a", "4")
    contra = contra.gsub("e", "3")
    contra = contra.gsub("i", "1")
    contra = contra.gsub("o", "0")

end

puts contrasena(contra)