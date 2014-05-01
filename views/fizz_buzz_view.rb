require_relative '../lib/fizz_buzz'

class FizzBuzzView < Mustache
  self.template_path = File.dirname(__FILE__)

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def fizz_buzz
    FizzBuzz.new.fizz_buzz number.to_i
  end
end