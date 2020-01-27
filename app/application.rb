class Application

    def call(env)
        resp = Rack::Response.new
        time = Time.now 

        if time.hour >= 12 
            resp.write "Good afternoon"
        else 
            resp.write "Good morning"
        end 
        resp.finish
    end 
end 