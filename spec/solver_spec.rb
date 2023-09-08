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
end
