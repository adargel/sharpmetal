require 'specs/specs_helper'

module SharpMetal 
 describe Metal do
   describe '#run' do
     before(:each) do
       @solutionName = 'solution'
	   @dependencies = ['moq', 'nhibernate']
	   @resolver = double('DependencyResolver', :resolve => nil)
	   @generator = double('SolutionGenerator', :generate => nil)
	   @output = double('output', :puts => nil)
       @metal = Metal.new(@output, @generator, @resolver)
	 end
	 it "outputs the generating solution message" do
	   @output.should_receive(:puts).with("Generating solution...\n")
	   @metal.run @solutionName, @dependencies
	 end
	 it "generates a solution directory with the given name" do
	   @generator.should_receive(:generate).with("solution")
	   @metal.run @solutionName, @dependencies
	 end
	 it "resolves the given dependencies" do
	   @resolver.should_receive(:resolve).with(@solutionName, @dependencies)
	   @metal.run @solutionName, @dependencies
	 end
	 it "outputs the generated solution message" do
	   @output.should_receive(:puts).with("Your solution has been generated.\n")
	   @metal.run @solutionName, @dependencies
	 end
   end
 end
end