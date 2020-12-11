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
    def self.display_cats_table(cats)
        cats_table = TTY::Table.new(header: ["Id", "CAT"])
        cats.each.with_index(1) do |cat, i| 
            cats_table << ["#{i}".blue, "#{cat.name}"]
        end
        puts cats_table.render(:unicode)
    end

    def self.display_cats_stats
        cats_table = TTY::Table.new(header: ["Id", "Name", "Origin", "Description", "Temperament"])
        cats_table << ["#{i}".blue, "#{self.name}", "#{self.origin}", "#{self.description}", "#{self.temperament}"]
        puts cats_table.render(:unicode)
    end
end
    
        