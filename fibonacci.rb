#!/usr/bin/env ruby
# frozen_string_literal: true

def fib(number)
  seq = [0, 1]
  seq << seq[seq.length - 1] + seq[seq.length - 2] until seq.length >= number
  seq[0..number]
end

def fib_recs(number)
  return number if number <= 1

  fib_recs(number - 1) + fib_recs(number - 2)
end

def fib_recs_seq(number)
  (0..number - 1).to_a.map { |n| fib_recs(n) }
end

# Test
# With loop
p fib(5)
p fib(8)
p fib(15)

# Recursive
p fib_recs_seq(5)
p fib_recs_seq(8)
p fib_recs_seq(15)
