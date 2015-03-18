class Abstraction < Term
  attr_accessor :var, :expr

  def initialize(var, expr)
    @var = var
    @expr = expr
  end

  def to_s
    "λ#{var}.#{expr}"
  end
end
