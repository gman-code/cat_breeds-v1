class CLI
    def run
      welcome
      user_selection
      get_breeds
      print_breeds
    #   temperaments
     breed_selection
    end
    def welcome 
        puts ""
        puts "welcome to cats breeds"
        puts "***************"
        puts ""
        puts "enter a letter to get list breeds"
        puts ""
    end
    def user_selection
        @breed_input = gets.strip.downcase
        API.get_cats
    end
    
     
    def get_breeds
        @cats=Cat.all.select {|cat|cat.name[0].downcase == @breed_input[0]}
    end 

    def breed_selection
        prompt
        input = gets.strip.downcase 
        while input != 'exit' 
            if input.to_i > 0 && input.to_i <= @cats.length  
                @cat = @cats[input.to_i - 1]    
                display_cat_info
                #  user_selection_1
                break
            else    
                puts "Sorry that did not match any breeds!, Try again"  
                print_breed 
                breed_selection
                break
            end 
        end
        goodbye
    end 
    
    def display_cat_info    
        puts " "
        puts "#{@cat.origin}"
        puts "#{@cat.temperament}"
        puts "#{@cat.description}"  
        puts ""

    end
    def prompt  
            puts ""
            puts "Enter a number about your cat or 'exit' to exit."
            puts ""
    end     
    def print_breeds 
            @cats.each.with_index(1) do |c, i|
                puts "#{i}. #{c.name}"
            end 
    end 
    def goodbye
        puts "Thank You, have a great day!" 
        puts "BYE!" 
    end
end 
                
       
           
            
