require 'rack'

#have to define a call method to respond to Rack when it calls up the call method
class MyServer
    def call(env)
        return [200, {'Content-Type' => 'text/html'}, pretty_response]
    end

    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
    end
end

run MyServer.new