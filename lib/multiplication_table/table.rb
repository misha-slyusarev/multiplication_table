class MultiplicationTable::Table
  def initialize(generator)
    @generator = generator
  end

  def print_out(length)
    if length <= 0
      puts 'Sequence length must be more than zero'
      return
    end

    sequence = @generator.get(length)
    @column_width = Math.log10(sequence.last**2).ceil

    puts sequence.reduce(' ' *  @column_width) {|l, x| l << ' ' << adjust(x)}

    sequence.each do |x|
      puts sequence.reduce(adjust(x)) {|l, y| l << ' ' << adjust(x * y)}
    end

    return
  end

  private

    def adjust(n)
      n.to_s.rjust(@column_width)
    end
end
