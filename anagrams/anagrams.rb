def first_anagram?(str_1, str_2)
    str_array = str_1.split("")
    permutations = str_array.permutation.to_a
    new_array = []
    permutations.each do |subarr|
        new_array << subarr.join("") # => "gizmo".include?("sally")
    end
    new_array.include?(str_2) # true or false?
end

#first_anagram?("possiblepermutations", "posisblepermutations")

def second_anagram?(str_1, str_2) #l i v e s 
    str_1.each_char do |char|
        if str_2.include?(char)
            str_2[(str_2.index(char))] = ""
        end
    end
    str_2.empty?
end

p second_anagram?("elvis", "lives")