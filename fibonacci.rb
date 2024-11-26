def fibs(n)
  arr = []
  for i in 0..n do
    if [0, 1].include?(i)
      arr.push i
    else
      arr.push(arr[i - 1] + arr[i - 2])
    end
  end
  arr
end

def fibs_rec(n)
  return [0] if n == 0
  return [0, 1] if n == 1

  array = fibs_rec(n - 1)
  array << array[-2] + array[-1]
end

p fibs_rec(5)
