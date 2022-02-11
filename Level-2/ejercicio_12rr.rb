#ejercicio 12 Buscar una matriz

def buscar(mat, valor)
    mat.each_with_index do |arr, id|
        arr.each_with_index do |element, i|
            return [id, i] if element == valor
        end
    end
    nil
end


puts buscar([[1, 2], [3, 4]], 3).inspect # [1, 0]
puts buscar([[1, 2], [3, 4]], 5).inspect # nil