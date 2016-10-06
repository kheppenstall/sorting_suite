require_relative 'insertion_sort'


sorter = Insertion.new
# sorter.sort([])
# sorter.sort([1])
# sorter.sort([1,2])
# sorter.sort([2,1])
sorter.sort(["d", "b", "a", "c"])
# sorter.sort([4,3,2,1])
# sorter.sort([4,3,1,2])
# sorter.sort([1,5,41,2,4000,300,-2,1,12,123])

# sorter.inplace_sort([])
# sorter.inplace_sort([1])
# sorter.inplace_sort([1,2])
# sorter.inplace_sort([2,1])
# sorter.inplace_sort(["d", "b", "a", "c"])
# sorter.inplace_sort([4,3,2,1])
# sorter.inplace_sort([4,3,1,2])
# sorter.inplace_sort([1,5,41,2,4000,300,-2,1,12,123])