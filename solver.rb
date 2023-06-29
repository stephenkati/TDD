class Solver
  def factorial(interger)
    raise ArgumentError, 'Negative numbers are not allowed!' if interger.negative?

    (1..interger).inject(:*) || 1
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 3).zero? && (number % 5).zero?
    return 'buzz' if (number % 5).zero?
    return 'fizz' if (number % 3).zero?

    number.to_s
  end
end
