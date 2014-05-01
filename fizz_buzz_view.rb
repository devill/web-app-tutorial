require_relative 'lib/fizz_buzz'

class FizzBuzzView < Mustache
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def fizz_buzz
    FizzBuzz.new.fizz_buzz number.to_i
  end
end