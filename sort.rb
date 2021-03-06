def partition arr, lo, hi  
  i,j = lo+1,hi
  while true
    i+=1 while arr[i] <= arr[lo] and i < hi
    j-=1 while arr[j] > arr[lo] and j > lo
    break if i>=j
    arr[i], arr[j] = arr[j], arr[i] #swap
  end
  arr[lo], arr[j] = arr[j], arr[lo]
  j
end

def quicksort arr, lo = 0, hi = nil  
  hi ||= arr.size - 1
  return arr if hi <= lo
  pivot = partition arr, lo, hi
  quicksort arr, lo, pivot-1
  quicksort arr, pivot+1, hi
end

puts "What Charecters Would You Like to Sort?"

numberInput = gets.chomp 

puts quicksort numberInput
