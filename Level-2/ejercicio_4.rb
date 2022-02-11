#ejercicio 4 Datos pares

def datos_pares_pos (arr)
    result  = []
    arr.each_with_index do |val, i|
        result << val if i % 2 == 0
    end
    result
end

puts datos_pares_pos([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).inspect
puts datos_pares_pos(["Make", "sun", "it", "bright", "Real"]).inspect
puts datos_pares_pos([]).inspect