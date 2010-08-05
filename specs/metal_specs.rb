require 'lib/metal'
module SharpMetal 
 describe Metal do
   describe '#run' do
     before(:each) do
       @solutionName = "solution"
	   @dependencies = [:moq, :nhibernate]
	   @generator = double('SolutionGenerator', :generate => nil)
	   @output = double('output', :out => nil)
       @metal = Metal.new(@output, @generator)
	 end
	 it "outputs the generating solution message" do
	   @output.should_receive(:out).with("Generating solution...\n")
	   @metal.run @solutionName, @dependencies
	 end
	 it "generates a solution directory with the given name" do
	   @generator.should_receive(:generate).with("solution")
	   @metal.run @solutionName, @dependencies
	 end
	 it "outputs the generated solution message" do
	   @output.should_receive(:out).with("Your solution has been generated.\n")
	   @metal.run @solutionName, @dependencies
	 end
   end
 end
end