class Puppy
    
    attr_accessor :name, :breed, :age

    def initialize(params)
        @name = params[:name]
        @breed = params[:breed]
        @age = params[:age]
    end


end
