require 'lib/solution_generator'
module SharpMetal
  describe SolutionGenerator do
    describe "#generate" do
  	  context "when solution does not already exist" do
  	    before(:each) do
  	      @dir = double('Dir', :mkdir => true)
  	      @generator = SolutionGenerator.new(@dir);
  	    end
  	    it "creates a solution folder with the name of the solution." do
  	      @dir.should_receive(:mkdir).with("my_project")
  	      @generator.generate("my_project")
  	    end
  	    it "creates the src folder in the solution folder" do
  	      @dir.should_receive(:mkdir).with("my_project/src")
  		    @generator.generate "my_project"
  	    end
  	    it "creates the lib folder in the solution folder" do
  	      @dir.should_receive(:mkdir).with("my_project/lib")
  		    @generator.generate "my_project"
  	    end
  	    it "creates the doc folder in the solution folder" do
  	      @dir.should_receive(:mkdir).with("my_project/doc")
  		    @generator.generate "my_project"
  	    end
  	    it "creates the test folder in the solution folder" do
	        @dir.should_receive(:mkdir).with("my_project/test")
	  	    @generator.generate "my_project"
	      end
	      it "creates the build folder in the solution folder"  do
	        @dir.should_receive(:mkdir).with("my_project/build")
	  	    @generator.generate "my_project"
	      end
	      it "creates the dist folder in the solution folder" do
	        @dir.should_receive(:mkdir).with("my_project/dist")
	  	    @generator.generate "my_project"
	      end
	    end
    end
  end
end