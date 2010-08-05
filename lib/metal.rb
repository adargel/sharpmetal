module SharpMetal
  class Metal
    def initialize(args=ARGV, input=STDIN,output=STDOUT,generator=SolutionGenerator.new)
      @input = input
  	  @output = output
    	@args = args
  	  @generator = generator
    end
    
    def run()
  	  @output.out "Generating solution...\n"
      @generator.generate(@args[0])
  	  @output.out "Your solution has been generated.\n"
    end
  end
end