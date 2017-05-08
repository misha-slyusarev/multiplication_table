class MultiplicationTable::FibonachiGenerator
  def get(length)
    (length-2).times.inject([1,1]) {|arr, _| arr << arr[-2] + arr[-1]}
  end
end
