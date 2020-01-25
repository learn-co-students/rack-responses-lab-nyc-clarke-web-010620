# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!".
# Remember that getting the time may return results in 24 hour time!
# Anytime on or after 12 is the afternoon.

class Application

    def call(env)
        resp = Rack::Response.new
        # resp.write "time_of_day\n"
        resp.write time_of_day_integer
        resp.finish
    end

    # def time_of_day
    #     Time.now
    # end
    
    def time_of_day_integer
        (Time.now.to_i > 1448643600) ? "Good Afternoon!" : "Good Morning!"
    end

end