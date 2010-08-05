module SharpMetal
  class SolutionGenerator
    def initialize(dir=Dir)
      @dir = dir
    end
    
    def generate(solution_name)
      @dir.mkdir solution_name
  	  @dir.mkdir "#{solution_name}/src"
  	  @dir.mkdir "#{solution_name}/lib"
  	  @dir.mkdir "#{solution_name}/doc"
  	  @dir.mkdir "#{solution_name}/dist"
  	  @dir.mkdir "#{solution_name}/test"
  	  @dir.mkdir "#{solution_name}/build"
    end
  end
end