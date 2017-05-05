class MultiplicationTable::PrimeGenerator
  def get(length)
    current = 1
    (1..length).map do
      loop do
        current += 1
        break if prime?(current)
      end
      current
    end
  end

  private

    def prime?(n)
      false unless n > 1
      (2..n/2).none?{|i| n % i == 0}
    end
end
