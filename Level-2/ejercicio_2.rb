#ejercicio contar elemnetos

def contar(arr)
    total = 0
    arr.each do |e|
        total += 1 if e == 5
    end
    total
    end

puts contar([1, 5, 5, 1, 5, 3, 4, 5]) # 4
puts contar([2, 6, "5", 5, 2, "f"]) # 1
puts contar([]) # 0
