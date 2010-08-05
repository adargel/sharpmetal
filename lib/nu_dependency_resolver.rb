module SharpMetal
  class NuDependencyResolver
    def initialize(loader=Nu::Loader)
	  @loader = loader
	end
    def resolve(solution, dependencies)
	  dependencies.each {|d| @loader.load(d, solution + '/lib')} unless dependencies.nil?
	end
  end
end