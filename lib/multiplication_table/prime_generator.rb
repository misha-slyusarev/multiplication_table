class MultiplicationTable::PrimeGenerator
  def get(length)
    return [] if length < 1

    current = 1
    length.times.map do
      loop do
        current += 1
        break if prime?(current)
      end
      current
    end
  end

  private

    def prime?(n)
      (2..n/2).none?{|i| n % i == 0}
    end
end
