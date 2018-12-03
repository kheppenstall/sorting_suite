class Sort

  def sort(list)
    return list if list.length <= 1
    list_first_half, list_second_half = divide_in_half(list)
    list_first_half_sorted = sort(list_first_half)
    list_second_half_sorted = sort(list_second_half)
    merge(list_first_half_sorted, list_second_half_sorted)
  end

  def divide_in_half(list)
    slice_size = (list.length.to_f / 2).ceil
    list.each_slice(slice_size).to_a
  end

  def merge(list_one, list_two)
    merged_list = []
    (list_one.length + list_two.length).times do
      return merged_list + list_one if list_two.none?
      return merged_list + list_two if list_one.none?

      if list_one.first <= list_two.first
        merged_list << list_one.shift
      else
        merged_list << list_two.shift
      end
    end

    merged_list   
  end
end

