require_relative 'merge_sort'


sorter = MergeSort.new
# p sorter.sort([])
# p sorter.sort([1])
# p sorter.sort([1,2])
p sorter.sort([2,1])
p sorter.sort(["d", "b", "a", "c"])
# p sorter.sort([4,3,2,1,1,0])
# p sorter.sort([4,3,1,2])
# p sorter.sort([1,5,6, 41,2,4000,300,-2,1,12,123])
# p sorter.sort([1,1,1,1,1])