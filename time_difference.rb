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