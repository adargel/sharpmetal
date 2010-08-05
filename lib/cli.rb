module SharpMetal
  class CLI < Thor
    def initialize(*)
      super
    end
    
    desc "Solution NAME", "Create a new solution called NAME"
      method_options :with => :array
    def solution(name)
      puts name
      puts options[:with]
    end
  end
end