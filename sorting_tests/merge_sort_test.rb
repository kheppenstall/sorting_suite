require "minitest/autorun"
require "minitest/pride"

require_relative '../merge_sort'

class MergeSortTest < Minitest::Test

  def test_sort_letters
    sorter = MergeSort.new
    array = ["d", "b", "a", "c"]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_numbers
    sorter = MergeSort.new
    array = [4, 3, 1, 2]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_with_repeated_numbers
    sorter = MergeSort.new
    array = [11, 9, 1, 6, 7, 9, 201, 0]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_with_negative_numbers
    sorter = MergeSort.new
    array = [-2, -5, 0]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_with_odd_number_of_numbers
    sorter = MergeSort.new
    array = [-2, 1, 3, 5, 0]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_array_of_1
    sorter = MergeSort.new
    array = [1]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_nil_array
    sorter = MergeSort.new
    array = []
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_array_with_all_the_same_elements
    sorter = MergeSort.new
    array = [1,1,1,1,1,1,1,1]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_big_array
    sorter = MergeSort.new
    array = (1..1000).to_a.reverse
    assert_equal array.sort, sorter.sort(array)
  end

end
