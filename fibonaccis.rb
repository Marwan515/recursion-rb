def fibs(num)
    arr = []
    j = 0
    while j != num
        if j == 0 || j == 1
            arr << j
        else
            y = arr[j - 1] + arr[j - 2]
            arr << y
        end
        j += 1
    end 
    return arr
end

def fibs_rec(num, arr = [])
    if num == 0
        return [0]
    elsif num == 1
        return [0, 1]
    end
    arr = fibs_rec(num - 1)
    arr << arr[-1] + arr[-2]
end