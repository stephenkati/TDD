require './solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'should return factorial of a non-negative number' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
      expect(solver.factorial(4)).to eq(24)
    end

    it 'raises an exception for negative integers' do
      solver = Solver.new
      expect { solver.factorial(-2) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'should return a reversed string' do
      solver = Solver.new
      expect(solver.reverse('steve')).to eq('evets')
      expect(solver.reverse('ruby')).to eq('ybur')
    end
  end

  describe '#fizzbuzz' do
    it 'should return "fizz" when the number is divisible by 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(6)).to eq('fizz')
      expect(solver.fizzbuzz(12)).to eq('fizz')
    end

    it 'should return "buzz" when the number is divisible by 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(25)).to eq('buzz')
      expect(solver.fizzbuzz(80)).to eq('buzz')
      expect(solver.fizzbuzz(50)).to eq('buzz')
    end

    it 'should return "fizzbuzz" when the number is divisible by both 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(60)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(45)).to eq('fizzbuzz')
    end

    it 'should return the number as a string for any other case' do
      solver = Solver.new
      expect(solver.fizzbuzz(4)).to eq('4')
      expect(solver.fizzbuzz(8)).to eq('8')
      expect(solver.fizzbuzz(11)).to eq('11')
    end
  end
end
