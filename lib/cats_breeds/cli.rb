class CLI
    def run
      welcome
      user_selection
      get_breeds
      no_breeds
      print_breeds
      breed_selection
    end
    def welcome 
        puts ""
        puts "welcome to cats breeds"
        puts "***************"
        puts ""
        puts "Enter a letter to get list of breeds, there is no breeds with these letters q,w,u,i,f,g,z,x,v,b"
        puts ""
    end
        
    def user_selection
        @breed_input = gets.strip.downcase
        API.get_cats
    end
    
    def get_breeds
        @cats=Cat.all.select {|cat|cat.name[0].downcase == @breed_input[0]}
    end 
    def no_breeds
        if @cats == []
            puts "Sorry no breeds with letter #{@breed_input[0]}"
            run
        end
    end
        
    def breed_selection
        prompt
        input = gets.strip.downcase 
        while input != 'exit' 
            if input.to_i > 0 && input.to_i <= @cats.length  
                @cat = @cats[input.to_i - 1] 
                display_cat_info
                user_selection_1
                break
            elsif    
                puts "Sorry that did not match any breeds!, Try again"  
                print_breeds
                breed_selection
                break
            end
        end
        
    end 
    
    def user_selection_1
        puts"type 'exit' to exit" 
        puts "type  'back' to go back to breeds lists!" 
        puts "Please type 'start' to go back to the very beginning the letter selection!" 
        input = gets.strip.downcase
        if input == 'exit' 
            return goodbye
        elsif input == "back"
            print_breeds 
            breed_selection
        elsif input == "start" 
            run
        else 
            puts "incorrect input try again"
            user_selection_1    
        end
    end
           
    def display_cat_info    
        puts ""
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
        puts "Thanks for using Cat Breed have a great day!" 
    end  
end  
           
            
