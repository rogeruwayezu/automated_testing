require 'rspec'

class Fizzbuzz
  def output(number)
    if number % 3 ===0 && number % 5 ===0
      return "fizzbuzz"
    elsif number % 3 === 0
      return "fizz"
    elsif number % 5 ===0
      return "buzz"
    else
     return number
    end
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fb = Fizzbuzz.new
      expect(fb.output(1)).to eq(1)
    end

    it 'should return 2 if given 2' do 
      fb = Fizzbuzz.new
      expect(fb.output(2)).to eq(2)
    end

    it 'should return "fizz" if given 3' do 
      fb = Fizzbuzz.new
      expect(fb.output(3)).to eq("fizz")
    end
    it 'should return "buzz" if given 5' do 
      fb = Fizzbuzz.new
      expect(fb.output(5)).to eq("buzz")
    end
    it 'should return "fizzbuzz" if given 15' do 
      fb = Fizzbuzz.new
      expect(fb.output(15)).to eq("fizzbuzz")
    end
  end
end 