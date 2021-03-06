module SharpMetal
  class Metal
    def initialize(output=STDOUT,generator=SolutionGenerator.new,resolver=NuDependencyResolver.new)
  	  @output = output
  	  @generator = generator
	  @resolver = resolver
    end
    
    def run(name, dependencies)
  	  @output.puts "Generating solution...\n"
      @generator.generate(name)
	  @resolver.resolve(name, dependencies)
  	  @output.puts "Your solution has been generated.\n"
    end
  end
end