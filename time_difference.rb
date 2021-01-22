require "byebug"
#Phase 1 # quadratic 0(n^2)

    def my_min_1(list)
        min =  list.first
        (0...list.length).each do |i|
            (i+1...(list.length-1)).each do |j|
                min = list[j] if list[j] < min
            end
        end
        min
    end

    p my_min_1([ 0, 3, 5, 4, -5, 10, 1, 90 ])

                  # 0 ,1, 2, 3, 4,  5, 6,  7  idx   
                #   list = [ 0, 3, 5, 4, -5, 10, 1, 90 ] i end at 90
                #   list = [ 0, 3, 5, 4, -5, 10, 1, 90 ] j ends at 90 + idx = nil
        # 90 verses nil

#Phase 2 # linear 0(m)

    def my_min_2(list)
        # min =  list.first # constant O(1)
        # list.each {|num| min = num if num < min } # O(n)
        # min 
        list.min
    end

    p my_min_2([ 0, 3, 5, 4, -5, 10, 1, 90 ])

# Largest Contiguous Sub-sum

#  list = [5, 3, -7]
#  largest_contiguous_subsum(list) # =>  
#  list = [2, 3, -6, 7, -6, 7]
#  largest_contiguous_subsum(list) # => 8 (from [7, -6, 7] 
#  list = [-5, -1, -3]
#  largest_contiguous_subsum(list) # => -1 (from [-1])

# phase 1  #is this then polynomial O(n^3) 

def largest_contiguous_subsum_1(list)
    subars = []                                         #constant 
        (0...list.length).each do |i|                   #linear n
            ((i + 1)...(list.length-1)).each do |j|     #quadratic 0(n^2)
                subars << list[i..j]      #n / 2 , 2(constant) is removed so it's n^3
            end
        end

    max_sum = subars.first.sum
    subars.each {|sub| max_sum = sub.sum if sub.sum > max_sum } # linear n^3
    max_sum
end


# phase 2

#  list = [2, 3, -6, 7, -6, 7]
#  largest_contiguous_subsum(list) # => 8 (from [7, -6, 7] 


   # if we add next index and it's greater than current, it becomes current
            # check if current > largest, largest = current
            # add next index, check
            # if sum is not greater than current, then compare to largest
            # if not greater than largest, keep largest and current sets to 0

    def largest_contiguous_subsum_2(list) #linear
    #    debugger
        largest_sum = list.first    # 8
        current_sum = 0     # 8

        i = 0
        while i < list.length
            current_sum += list[i]

            if current_sum > largest_sum
                largest_sum = current_sum 
            end

            if current_sum < 0
                current_sum = 0
            end

            i += 1
        end
        largest_sum
    end

    p largest_contiguous_subsum_2([2, 3, -6, 7, -6, 7, -1, 100])

    