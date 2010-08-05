module SharpMetal
  class Metal
    def initialize(output=STDOUT,generator=SolutionGenerator.new)
  	  @output = output
  	  @generator = generator
    end
    
    def run(name, dependencies)
  	  @output.out "Generating solution...\n"
      @generator.generate(name)
  	  @output.out "Your solution has been generated.\n"
    end
  end
end