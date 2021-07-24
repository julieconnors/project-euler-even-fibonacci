def even_fibonacci_sum(limit)
    i = 0
    sequence = [0]
    while sequence.last() < limit
      if sequence.length == 1
        sequence.push(1)
        i += 1
      else
        sequence.push(sequence[i - 1] + sequence[i])
        i += 1
      end
      
    end
    sequence.pop()
    even_sequence = sequence.select {|num| num.even? }
    even_sequence.sum()
  end