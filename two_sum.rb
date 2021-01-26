def bad_two_sum?(arr, target_sum)

    # (0...arr.length).each do |i|
    #     (i + 1...arr.length - 1).each do |j|
    #         return true if arr[i] + arr[j] == target_sum
    #     end
    # end

    arr.each_with_index do |e1, i|
        arr.each_with_index do |e2, j|
            if i != j && e1 + e2 == target_sum
                return true
            end
        end
    end

    false
end

def okay_two_sum?(arr, target_sum)
    arr.sort!

    i = 0
    j = arr.length - 1
    while i != j
        sum = arr[i] + arr[j] 

        case sum <=> target_sum 
            when -1
                i += 1
            when 0
                return true
            when 1
                j -= 1
        end
    end

    false
end

def two_sum?(arr, target_sum)
    hash = {}
    arr.each { |num| hash[num] = true }

    hash.each do |k, v|
        diff = target_sum - k
        return true if hash[diff]
    end
    false
end

def two_sum?(arr, target)
    hash = {}

    arr.each do |ele|
        return true if hash.has_key?(ele)
        hash[ele] = true
    end
    false
end


p arr = [0, 1, 5, 7]
p set_sums(arr, 6) # => should be true
p set_sums(arr, 10) # => should be false