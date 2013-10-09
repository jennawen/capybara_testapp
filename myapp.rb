require "sinatra/base"


# simulates a site that might let you sign up for a newsletter.

class MyApp < Sinatra::Base
    get "/" do
        erb :index
    end

# If we get a post request to the path /thankyou, we take the values of the name and email parameters and assign them instance variables, which can now be used in thankyou.erb    
     
    post "/thankyou" do
        @name = params["name"]
        @email = params["email"]
        erb :thankyou
    end

# At the /form path, we render the form.erb template
     
    get "/form" do
        erb :form
    end
end
