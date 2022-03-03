#!/usr/bin/env ruby
# frozen_string_literal:true

def merge_sort(array)
  return array if array.length == 1

  mid = array.length / 2
  merge merge_sort(array[0...mid]), merge_sort(array[mid..-1])
end

def merge(first_half, second_half)
  sorted = []
  loop do
    if first_half.first <= second_half.first
      sorted << first_half.shift
    else
      sorted << second_half.shift
    end

    break if first_half.empty? || second_half.empty?
  end
  sorted + first_half + second_half
end

# Test
arr = (1..50).to_a.shuffle!
p arr
p merge_sort(arr)
arr = (1..10).to_a.shuffle!
p arr
p merge_sort(arr)
