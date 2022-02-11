#ejercicio_13 Imprime la matriz
def print_array(array)
    array.each_with_index do |element, index|
        element.each_with_index do |e, index|
            if index < 2
                print " #{e} |"
            elsif index < 3
                print " #{e} "
            end
        end
        puts
    end
end

print_array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print "------------
"
print_array([[1, 2, 3], [4, 50, 6], [71, 8, 9]])
#   1 |  2 |  3
#   4 | 50 |  6
#  71 |  8 |  9
print "------------
"
print_array([[1500, 2, 300], [5, 50, 6], [710, 86, 9]])
#  1500 |    2 |  300
#     5 |   50 |    6
#   710 |    6 |    9