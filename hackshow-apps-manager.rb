# Hackshow Apps Manager
#Iteration Two


class App
	def initialize(app_name, app_author, app_os, app_points)
		@apps = []
		@app_name = app_name
		@app_author = app_author
		@app_os = app_os
		@app_points = app_points
	end

	def description
		puts @app_author + " has developed " + @app_name + " for " + @app_os + " and he has got " + @app_points.to_s + " points."
	end


	def evaluation
		if @app_points < 0 || @app_points > 10
			puts "Evaluation error, try to set another punctuation"

		else
			if @app_points >= 0 && @app_points <= 4
				@app_evaluation = "a poor"
			elsif @app_points >=5 && @app_points <= 6
				@app_evaluation = "a good"
			elsif @app_points >= 7 && @app_points <= 9
				@app_evaluation = "a very cool"
			else
				@app_evaluation = "an awesome"
			end
		puts @app_author + "has developed " + @app_name +  " for " + @app_os + " and he has made " + @app_evaluation + " aplication."
		end	 
	
	end	

end


app = App.new "ILoveApples", "Richard Stallman", "iOS", 8

app.description
app.evaluation
