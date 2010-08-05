require 'lib/metal'
module SharpMetal 
 describe Metal do
   describe '#run' do
     before(:each) do
	   @generator = double('SolutionGenerator', :generate => nil)
	   @input = double('input')
	   @output = double('output', :out => nil)
	   @args = ["solution"]
     @metal = Metal.new(@args, @input, @output, @generator)
	 end
	 it "outputs the generating solution message" do
	   @output.should_receive(:out).with("Generating solution...\n")
	   @metal.run
	 end
	 it "generates a solution directory with the given name" do
	   @generator.should_receive(:generate).with("solution")
	   @metal.run
	 end
	 it "outputs the generated solution message" do
	   @output.should_receive(:out).with("Your solution has been generated.\n")
	   @metal.run
	 end
   end
 end
end