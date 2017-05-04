class MultiplicationTable::PrimeGenerator
  def initialize(first = 1)
    @current = first
  end

  def next
    @current += 1
    until prime?(@current) do
      @current += 1
    end
    @current
  end

  private

    def prime?(n)
      (2..n/2).none?{|i| n % i == 0}
    end
end
