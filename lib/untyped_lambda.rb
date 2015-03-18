require "untyped_lambda/version"
require "untyped_lambda/term"
require "untyped_lambda/variable"
require "untyped_lambda/abstraction"
require "untyped_lambda/application"

module UntypedLambda

  def self.calc(input)
    parse(input).to_s
  end

  private

    def self.parse(input)
      puts input if ENV['TRACE']
      if input[0] == "λ"
        parts = input.split(".")
        Abstraction.new(parse(parts[0][1..-1]), parse(parts[1..-1].join(".")))
      elsif input[0] == "("
        input.match /\((.*)\)\(?(.*)\)?/
        Application.new(parse($1), parse($2))
      else
        Variable.new(input)
      end
    end
end
