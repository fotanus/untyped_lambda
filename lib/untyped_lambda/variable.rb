class Variable < Term
  attr_accessor :value

  def initialize(string)
    @value = string
  end

  def to_s
    @value.to_s
  end
end
