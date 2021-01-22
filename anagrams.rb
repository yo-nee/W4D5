require "byebug"

# Phase 1 Anagram # permuation , factorial)(n!)
    def first_anagram?(str, str_2) #str = "abc"   str2 = "cab"  
    #     variations = str.split("").permutation.to_a
    #     variations.include?(str_2.split(""))
    # end
        first_anagram?(str).include?(str2)
    end
p first_anagram?("abc", "cba")


# Phase 2 Anagram 


# Phase 3 Anagram 


# Phase 4th Anagram linear O(n)

def fourth_anagram?(string, string2)
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

