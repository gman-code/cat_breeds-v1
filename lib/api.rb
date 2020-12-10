class API
    def self.get_cats
        url="https://api.thecatapi.com/v1/breeds"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        cats=JSON.parse(response)
        
        cats.each do |cat|
           Cat.new(name: cat["name"], temperament:  cat["temperament"], origin: cat["origin"], description: cat["description"] ) if cat["name"] != ""
        end
    end 
end

       