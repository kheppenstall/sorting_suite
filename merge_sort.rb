class MergeSort

  def merge(list1, list2)
    merged = list1
    length_list2 = list2.length
    
    (length_list2).times do
       new_element = list2.pop
       if new_element > merged[-1]
         merged << new_element
       else
          needs_sort = true
          merged.each_index do |num|
            if needs_sort && new_element <= merged[num]
              merged.insert(num, new_element)
              needs_sort = false
            end
          end
        end
      end
      merged
    end
  
  def split_in_half(to_split)
    length = to_split.length.to_f
    half1, half2 = to_split.each_slice((length/2).ceil).to_a
  end

  def sort(to_sort)  
    length = to_sort.length
    if length == 1 || length == 0
      to_sort
    else
      half1, half2 = split_in_half(to_sort)
      half1_sorted = sort(half1)
      half2_sorted = sort(half2)
      merge(half1_sorted, half2_sorted)
    end 
  end
  
end
