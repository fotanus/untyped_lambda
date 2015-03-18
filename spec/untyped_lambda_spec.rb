require 'spec_helper'

describe UntypedLambda do
  it 'has a version number' do
    expect(UntypedLambda::VERSION).not_to be nil
  end

  describe "calc" do
    it "calc variable" do
      code = "x"
      expect(UntypedLambda.calc(code)).to eq(code)
    end

    it "calc an abstraction" do
      code = "λx.x+x"
      expect(UntypedLambda.calc(code)).to eq(code)
    end

    it "calc an application" do
      code = "(λx.x+x)2"
      expect(UntypedLambda.calc(code)).to eq("4")
    end

    it "support currying" do
      code = "(λx.((λy.x+y)3))2"
      expect(UntypedLambda.calc(code)).to eq("5")
    end
  end
end
