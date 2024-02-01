def my_min(list) #O(n^2) 
    list.each do |num1|
        num_trues = list.map {|num2| num1 <= num2 ? true : false}
        return num1 if num_trues.all?(true)
    end
end

def my_min_p2(list) #O(n)
    list.inject {|acc, el| el < acc ? el : acc}
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

#p my_min_p2(list)

p my_min(list)