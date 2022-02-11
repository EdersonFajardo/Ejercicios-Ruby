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