class API

    def self.get_cats
        url="https://api.thecatapi.com/v1/breeds"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        cats=JSON.parse(response)
        
        cats.each do |cat|
           Cat.new(name: cat["name"], temperament:  cat["temperament"], origin: cat["origin"], description: cat["description"] ) if cat["name"] != ""
           cat.each do |i|    
            cat.origin << cat[i] if (i.include? "origin") && cat[i] != "" && cat[i] != "" && cat[i] != nil  
            end 
        end
    end 
end

# def self.get_breeds(cat)    
#             url="https://api.thecatapi.com/v1/breeds"
#             uri=URI(url)
#             response=Net::HTTP.get(uri) 
    
#             info = JSON.parse(response)
#             name = "Abyssinian"   
#             temperament = "Active, Energetic, Independent, Intelligent, Gentle"   
#             origin = "Egypt"  
#             description = "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals"  
#              cat.each do |i|    
#                  cat.origin << cat[i] if (i.include? "origin") && cat[i] != "" && cat[i] != "" && cat[i] != nil  
#              end 
    
# end
    