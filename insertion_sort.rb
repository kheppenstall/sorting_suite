class Insertion

  def sort(to_sort)

    if to_sort.length == 0 || to_sort.length == 1
      p to_sort
      return
    end

    sorted = to_sort.pop(2)

    if sorted[0] > sorted[1]
      sorted[0], sorted[1] = sorted[1], sorted[0]
    end

    length = to_sort.length
    
    length.times do
      new_element = to_sort.pop
      if new_element > sorted[-1]
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
  p sorted
  end

  def inplace_sort(to_sort)
    
    length = to_sort.length

    if length == 0 || length == 1
      p to_sort
      return
    end

    length.times do
      element = to_sort.pop
      needs_sort = true
      
      to_sort.each_index do |index|
        if needs_sort && element <= to_sort[index]
          to_sort.insert(index, element)
          needs_sort = false
        end
      end
      
      if needs_sort
        to_sort << element
      end

    end
  p to_sort  
  end

end
