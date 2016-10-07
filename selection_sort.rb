class SelectionSort

  def sort(to_sort)
    sorted = []
    length = to_sort.length

    length.times do 
      min_element = to_sort.min
      min_element_index = to_sort.rindex(min_element)
      to_sort.delete_at(min_element_index)
      sorted << min_element
    end
    sorted
  end

end

sorter = SelectionSort.new
array = [3,4,1,2]
puts sorter.sort(array).inspect
