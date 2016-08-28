
class RSB_GAME

	attr_accessor :wins,:loses,:draw,:game_over,:round

	def initialize()	
		begin
			@game_over=false
			@round=0 
			@wins=0
			@loses=0
			@draw=0
			print "Let's Play Ro-Sham-Bo (Y/n)?"
			operation = gets.chomp
			if operation=="" ||  operation=='Y' || operation=='y' 
				@game_over=false
				return 
			elsif  operation=='N' || operation=='n' 
				@game_over=true
				return 
			end
		end while 1
	end

	def greet_rule()
		puts "=======Welcome to this game!!!======="
		puts "Rules :"
		puts "1)Rock beats Scissors."	
		puts "2)Paper beats Rock."	
		puts "3)Scissors beats Paper."	
		puts "4)亂出沒出都算你輸"	
	end
	def Play()
		arr=['Rock','Scissors','Paper']
		@round+=1
		print "(1)Rock (2)Scissors (3)Paper (0)Quit Round##{round} Go!!!>"
		user_input_s=gets.chomp
		if ['1','2','3'].include?(user_input_s)
			pc_input=[1,2,3].sample
			user_input=user_input_s.to_i
			puts "Player===> #{arr[user_input-1]} vs #{arr[pc_input-1]}<===PC"
			result=user_input-pc_input
			if result==0
				puts"Draw Game!!!"
				self.draw+=1
			elsif result==-2 || result==1
				puts"You Lose!!!"
				@loses+=1
			else
				puts"You Win!!!"
				@wins+=1
			end

		elsif user_input_s=='0'
			@game_over=true
			@round-=1
		else
			puts"You Lose!!!亂出沒出都算你輸"	
			@loses+=1		
		end
	end

	def Host()
		if(self.game_over!=true)
			greet_rule()
		begin
			Play()
			end while self.game_over!=true
			puts "Your Final Record: #{self.wins} wins / #{self.loses} loses / #{self.draw} draws in #{self.round} games"
		end
			puts"Bye!!!"

	end
end

game=RSB_GAME.new()  
game.Host();
