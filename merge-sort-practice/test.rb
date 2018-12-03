require "minitest/autorun"
require "minitest/pride"
require_relative './sort'

class SortTest < Minitest::Test

  def test_sort_letters
    sorter = Sort.new
    array = ["d", "b", "a", "c"]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_numbers
    sorter = Sort.new
    array = [4, 3, 1, 2]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_with_repeated_numbers
    sorter = Sort.new
    array = [0, 12, 3, 0, -2, 4, 44, 11, 9, 1]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_with_negative_numbers
    sorter = Sort.new
    array = [-2, -5, 0]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_with_odd_number_of_numbers
    sorter = Sort.new
    array = [-2, 1, 3, 5, 0]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_array_of_1
    sorter = Sort.new
    array = [1]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_nil_array
    sorter = Sort.new
    array = []
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_array_with_all_the_same_elements
    sorter = Sort.new
    array = [1,1,1,1,1,1,1,1]
    assert_equal array.sort, sorter.sort(array)
  end

  def test_sort_big_array
    sorter = Sort.new
    array = (1..1000).to_a.reverse
    assert_equal array.sort, sorter.sort(array)
  end

end
