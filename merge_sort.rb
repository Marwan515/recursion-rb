def merge_sort(arr)
    return arr if arr.length < 2
    y = arr.length / 2 - 1
    left_h = arr[...y]
    right_h = arr[y...]
    sorted = []
    while sorted.length != arr.length
        left_h.length.times do
            for i in left_h
                n = left_h.index(i)
                if i == left_h.last
                    next
                else    
                    if i < left_h[n + 1]
                        next
                    else
                        left_h[n], left_h[n + 1] = left_h[n + 1], left_h[n]
                    end
                end    
            end        
        end
        
        right_h.length.times do
            for i in right_h
                n = right_h.index(i)
                if i == right_h.last
                    next
                else    
                    if i < right_h[n + 1]
                        next
                    else
                        right_h[n], right_h[n + 1] = right_h[n + 1], right_h[n]
                    end
                end    
            end        
        end
            
        (left_h.length + right_h.length).times do
            if left_h.empty?
                sorted << right_h.shift
            elsif right_h.empty?
                sorted << left_h.shift
            else    
                if left_h.first < right_h.first
                    sorted << left_h.shift
                elsif right_h.first < left_h.first
                    sorted << right_h.shift
                elsif right_h.first == left_h.first
                    sorted << left_h.shift
                    sorted << right_h.shift
                end        
            end
        end
    end
    return sorted
end

puts merge_sort([4, 1, 3, 2, 5, 9, 7, 8, 100, 65])
