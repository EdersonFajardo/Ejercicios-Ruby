#ejercicio 6 Arreglar posiciones

def posiciones_num_1 (arr)
    result = []
    arr.each_with_index do |val, i|
        result << i if val == 1
    end
    result
end
puts posiciones_num_1([0, 1, 0, 1]).inspect
puts posiciones_num_1([1, 1, 1]).inspect
puts posiciones_num_1([2, 3, 4]).inspect