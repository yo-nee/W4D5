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
