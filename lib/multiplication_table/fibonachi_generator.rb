class MultiplicationTable::FibonachiGenerator
  def get(length)
    return [] if length <= 0
    return [1] if length == 1
    
    (length-2).times.inject([1,1]) {|arr, _| arr << arr[-2] + arr[-1]}
  end
end
