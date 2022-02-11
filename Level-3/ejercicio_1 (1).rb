#ejercicio 1 ordenar

def ordenar(arr)
    arr.each_with_index do |val, i|
        min_val, min_index = val, i
        for j in i+1..arr.length-1
            if arr[j] < val
            min_val, min_index = arr[j], j
        end
    end
    arr[i], arr[min_index] = arr[min_index], arr[i]
    end
end

puts ordenar([3, 2, 1]).inspect # [1, 2, 3]
puts ordenar([7, 8, 9]).inspect # [7, 8, 9]
puts ordenar([6, 5, 7]).inspect # [5, 6, 7]
puts ordenar([]).inspect # []
puts ordenar([5]).inspect # [5]
puts ordenar([2, 2]).inspect # [1, 2, 2, 3]
puts ordenar([1, 2, 2, 3]).inspect # [1, 2, 2, 3]
puts ordenar([1, 4, 4, 3]).inspect # [1, 3, 4, 4]
puts ordenar([4, 2, 3, 1, 2]).inspect # [1, 2, 2, 3, 4]