#  2. setup pokemon client to talk to pokemon repo app
defmodule GreeterClient.Client do
  # 3. alias stub that we use to communicate
  alias Greeterapi.GreeterService.Stub

  # 5. alias proto generated modules that were going to use
  alias Greeterapi.{
    HelloRequest,
    HelloResponse
  }

  # 4. setup url of pokemon repo
  @gretter_server_url "localhost:8080"

  @spec say_hello(String.t()) :: {:ok, String.t()} | {:error, any}
  def say_hello(name) do
    # 6. Establish a connection with gRPC server and return GRPC.Channel needed for sending requests.
    with {:ok, channel} <- GRPC.Stub.connect(@gretter_server_url),
         # 7. build request struct
         {:ok, %HelloRequest{} = request} <- build_request(name),
         # 8. call rpc method in remote server by passing channel and request parameter
         # you can also pass options for timeout and deadline
         {:ok, %HelloResponse{message: message}} <-
           Stub.say_hello(channel, request) do
      {:ok, message}
    end
  end

  defp build_request(name), do: {:ok, HelloRequest.new(name: name)}
end
