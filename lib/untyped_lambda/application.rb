class Application < Term
  attr_accessor :mapping, :variable
  def initialize(mapping, variable)
    sanity_check(mapping,variable)
    @mapping = mapping
    @variable = variable
  end

  def to_s
    if @mapping.kind_of? Abstraction
      eval(@mapping.expr.to_s.gsub(@mapping.var.to_s, @variable.to_s)).to_s
    else # is another application
      @mapping.mapping.expr.to_s.gsub(@mapping.mapping.var.to_s, @mapping.variable.to_s).to_s
    end
  end


  private

    def sanity_check(mapping, variable)
      unless mapping.kind_of? Abstraction or mapping.kind_of? Application
        raise "#{mapping.inspect} is not an mapping"
      end

      unless variable.kind_of? Variable
        raise "#{abstration.inspect} is not an variable"
      end
    end
end
