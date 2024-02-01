# def my_min(list) #O(n^2) 
#     list.each do |num1|
#         num_trues = list.map {|num2| num1 <= num2 ? true : false}
#         return num1 if num_trues.all?(true)
#     end
# end

# Alternative Solution
# def my_min(list)
#     min = list.first
#     list.each do |num1| 
#         list.each do |num2| 
#            min = num2 if num2 < min
#         end
#     end
#     min
# end

# def my_min_p2(list) #O(n)
#     list.inject {|acc, el| el < acc ? el : acc}
# end


# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#p my_min_p2(list)
# p my_min(list)


def largest_contiguous_subsum(list)
    sums = []
    (0...list.length).each do |i|
        sums << list[i]
        ((i + 1)...list.length).each do |i2|
            sums << list[i..i2].sum
        end
    end
    sums.max
end


#    list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

#    list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])

#  list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])


def largest_contiguous_subsum_p2(list)
    largest_sum = list.first
    current_sum = 0

    (0...list.length).each do |i|
        # p current_sum
        if current_sum < 0 && i < list.length - 1
            current_sum = list[i]
            # p current_sum
            # puts "----------------------------"
            largest_sum = current_sum if current_sum > largest_sum
        else
            current_sum += list[i]
            largest_sum = current_sum if current_sum > largest_sum
        end
    end
    largest_sum
end
    
    
# list = [5, 3, -7]
# p largest_contiguous_subsum_p2(list) # => 8

#    list = [-5, -1, -3]
# p largest_contiguous_subsum_p2(list) # => -1 (from [-1])

 list = [2, 3, -6, 7, -6, 7]
 p largest_contiguous_subsum_p2(list) # => 8 (from [7, -6, 7])

 list = [2, 2, 4, 8]
 p largest_contiguous_subsum_p2(list) # => 16
    
    
    
    
    # largest_sum = list.first

    # (0...list.length).each do |i|
    #     largest_sum = list[i] if list[i] > largest_sum
    #     a = list[0..i].sum
    #     b = list[i..-1].sum

    #     case a <=> b
    #     when 1 || 0
    #         largest_sum = a if a > largest_sum
    #     # when 0
    #     #     largest_sum = a if a > largest_sum
    #     when -1
    #         largest_sum = b if b> largest_sum
    #     end
    # end
    # largest_sum



