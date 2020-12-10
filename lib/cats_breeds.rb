class Cat
    attr_accessor :name,  :origin, :description, :temperament

    @@all =[]   

    def initialize(name: ,  origin: , temperament: , description:)
        @name = name
        @origin = origin
        @temperament = temperament
        @description = description
        @@all << self 
    end
    
    def self.all
        @@all
    end
end   

    
