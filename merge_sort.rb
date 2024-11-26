def merge_sort(arr)
  return arr if arr.length < 2

  half = arr.length / 2
  left = merge_sort(arr[0...half])
  right = merge_sort(arr[half..arr.length])

  result = []
  until left.empty? || right.empty?
    if left[0] <= right[0]
      result.push(left.shift)
    else
      result.push(right.shift)
    end
  end
  result + left + right
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
