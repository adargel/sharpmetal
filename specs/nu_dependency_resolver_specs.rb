require 'specs/specs_helper'

module SharpMetal
  describe :nu_dependency_resolver do
    describe "#resolve" do
	  before :each do
	    @solutionName = "test_solution"
	    @dependencies = ["moq", "structuremap", "nunit"]
		@loader = double("DependencyLoader")
		@resolver = NuDependencyResolver.new @loader
	  end
	  it "does not load anything when dependencies is nil" do
	    @dependencies = nil
		@loader.should_not_receive(:load)
		@resolver.resolve(@solutionName, @dependencies)
	  end
	  it "loads each dependency from the loader" do
	    @dependencies.each {|d| @loader.should_receive(:load).with(d, @solutionName + '/lib')}
		@resolver.resolve(@solutionName, @dependencies)
	  end
	end
  end
end