require_relative '../solver'

describe Solver do
  let(:solver) { Solver.new }

  describe 'Factorial Test' do
    it 'returns factorial of a given int argument' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'returns 1 if given arguement is 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns error if given arguemnt is negative number' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
      expect { solver.factorial(-99) }.to raise_error(ArgumentError)
      expect { solver.factorial(-999) }.to raise_error(ArgumentError)
    end
  end

  describe 'Reverse string Test' do
    it 'should return reverse of the given argument' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
    it 'should return reverse of the given argument' do
      expect(solver.reverse('Word')).to eq('drow')
    end
    it 'should return reverse of the given argument' do
      expect(solver.reverse('THrOW')).to eq('worht')
    end
  end

  describe 'Fizzbuzz Test' do
    it 'should return fizzbuzz if given argument is divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'should return fizz if given argument is divisible by 3' do
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end
    it 'should return buzz if given argument is divisible by 5' do
      expect(solver.fizzbuzz(25)).to eq('buzz')
    end
    it 'should return integer argument if given argument is not divisible by 3 or 5' do
      expect(solver.fizzbuzz(7)).to eq(7)
    end
  end
end
