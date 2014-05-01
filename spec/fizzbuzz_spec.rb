require 'rspec'
require_relative '../lib/fizzbuzz'

describe FizzBuzz do
  [
      [1, '1'],
      [2, '2'],
      [3, 'Fizz'],
      [6, 'Fizz'],
      [5, 'Buzz'],
      [10, 'Buzz'],
      [15, 'FizzBuzz'],
  ].each do |input, result|
    it "should return #{input} for #{result}" do
      expect(subject.fizz_buzz(input)).to eq(result)
    end
  end
end