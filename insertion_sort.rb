class InsertionSort

  def sort(to_sort)

    if to_sort.length == 0 || to_sort.length == 1
      return to_sort
    end

    sorted = to_sort.pop(2)

    if sorted[0] > sorted[1]
      sorted[0], sorted[1] = sorted[1], sorted[0]
    end

    length = to_sort.length
    
    length.times do
      new_element = to_sort.pop
      if new_element >= sorted[-1]
        sorted << new_element
      else
        needs_sort = true
        sorted.each_index do |num|
          if needs_sort && new_element < sorted[num]
            sorted.insert(num, new_element)
            needs_sort = false
          end
        end
      end
    end
  sorted
  end

  def inplace_sort(to_sort)
    
    length = to_sort.length

    if length == 0 || length == 1
      return to_sort
    end

    to_sort.each do
      (length - 1).times do |index|
        if to_sort[index] > to_sort[index + 1]
          to_sort[index] , to_sort[index + 1] = to_sort[index + 1] , to_sort [index]
        end
      end
    end

    return to_sort

  #   length.times do
      
  #     new_element = to_sort.pop
  #     needs_sort = true
      
  #     to_sort.each_index do |index|
  #       if needs_sort && new_element <= to_sort[index]
  #         to_sort.insert(index, new_element)
  #         needs_sort = false
  #       end
  #     end
      
  #     if needs_sort
  #       to_sort << new_element
  #     end

  #   end
  # p to_sort  
  end

end
