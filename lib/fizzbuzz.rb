class FizzBuzz
  def fizz_buzz(number)
    result = ''
    result += 'Fizz' if number % 3 == 0
    result += 'Buzz' if number % 5 == 0
    result = number.to_s if result == ''
    result
  end
end