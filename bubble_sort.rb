class BubbleSort

def sort(to_sort)
  
    length = to_sort.length
    needs_sort = true
  
    while needs_sort
      needs_sort = false
      (length-1).times do |i|
        if to_sort[i] > to_sort[i+1]
          to_sort[i], to_sort[i+1] = to_sort[i+1], to_sort[i] 
          needs_sort = true
        end
      end
    end
    
    p to_sort
  end
  
end
