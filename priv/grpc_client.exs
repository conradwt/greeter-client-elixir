{:ok, response} = GreeterClient.Client.say_hello("Conrad")

IO.inspect(response)
