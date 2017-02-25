numbers = [1,4,3,1,2,6,7,5,4,3,9,7,8,4,5,6,2,9,4,8,1,2]

def bubble_sort(array)

  edit_made = true
  while(edit_made)
    edit_made = false
    array.each_with_index { |num, index|
      if(array[index+1] != nil && num > array[index+1])
        swap_indeces(array, index, index+1)
        edit_made = true
      end
    }
  end

  return array
end

def swap_indeces(array, index1, index2)
  temp = array[index1]
  array[index1] = array[index2]
  array[index2] = temp
  return array
end


p bubble_sort(numbers)
