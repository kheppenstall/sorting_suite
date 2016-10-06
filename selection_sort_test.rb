require_relative 'selection_sort'

sorter = SelectionSort.new
# sorter.sort([])
# sorter.sort([1])
# sorter.sort([1,2])
# sorter.sort([2,1])
sorter.sort(["d", "b", "a", "c"])
# sorter.sort([4,3,2,1])
# sorter.sort([4,3,1,2])
# sorter.sort([1,5,41,2,4000,300,-2,1,12,123])