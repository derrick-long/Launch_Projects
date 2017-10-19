def selection_sort(to_sort)
  for index in 0..(to_sort.length - 2)
    # select the first element as the temporary minimum
    index_of_minimum = index

    # iterate over all other elements to find the minimum
    for inner_index in index..(to_sort.length - 1)
      if to_sort[inner_index] < to_sort[index_of_minimum]
        index_of_minimum = inner_index
      end
    end

    if index_of_minimum != index
      to_sort[index], to_sort[index_of_minimum] = to_sort[index_of_minimum], to_sort[index]
    end
  end

  return to_sort
end

puts selection_sort([1,2,5,29,28,76])
