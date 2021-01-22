require "byebug"
# Phase 1 linear O(n)

def first_anagram?(string, string2)
    char_count(string) == char_count(string2) # 2n
end

def char_count(string)
    variations = Hash.new(0) 
    # debugger 
    string.each_char { |char| variations[char] += 1 }
    # (0...string.length).each do |i|
    #     if variations.has_key?(string[i])
    #         variations[string[i]] += 1
    #     else
    #         variations[string[i]] = 1
    #     end
    # end
    variations
end

p first_anagram?("elvis", "lives")    #=> true
p first_anagram?("gizmo", "sally")    #=> false