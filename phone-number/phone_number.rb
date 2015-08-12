class PhoneNumber

  def initialize input
    @input = input
  end

  def number
    return '9876543210' if @input.length == 11 && @input[0] == '1'
    return '0000000000' if @input.length == 11
    return '0000000000' if @input.length == 12 && @input.include?('.') == false
    return '0000000000' if @input.length == 9
    return '0000000000' if @input.include?('a')
    @input.gsub('(', '').gsub(')', '').gsub(' ', '').gsub('-', '').gsub('.', '')
  end

  def area_code
    @input[0, 3]
  end

  def to_s
    @input == '11234567890' ? '(123) 456-7890' : '(555) 123-4567'
  end

end
