def bubble_sort(array)
    for i in 0...array.length
        swaps = 0
        for j in 0...array.length - 1
            if array[j] > array[j + 1]
                array[j], array[j + 1] = array[j + 1], array[j]
                swaps += 1
            end
        end
        if swaps == 0
            return p array
        end
    end
    p array
end

bubble_sort([4, 3, 2, 1])