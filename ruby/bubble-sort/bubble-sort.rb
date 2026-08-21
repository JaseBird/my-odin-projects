# Bubble Sort
def bubble_sort(numbers)
    puts "Original Array: #{numbers}"

    number_of_passes = numbers.length - 1

    for pass_index in 0...number_of_passes
        for i in 0...number_of_passes - pass_index
            if numbers[i] > numbers[i + 1]
                numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
            end
        end
    end
    puts "Sorted Array: #{numbers}"  
end

bubble_sort([4,3,78,2,0,2,98,5,8,4])