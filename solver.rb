class Solver
  def factorial(n)
    if n < 0
      raise ArgumentError, "Argument must be positive integer"
    elsif n === 0
      return 1
    else 
      n * factorial(n - 1)
    end
  end

  def reverse(str)
    @reverseStr = str.reverse.downcase
  end
end

solve = Solver.new
puts solve.factorial(0)
puts solve.factorial(5)
# puts solve.factorial(-1)
