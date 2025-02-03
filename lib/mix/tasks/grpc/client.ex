defmodule Mix.Tasks.Grpc.Client do
  @moduledoc """
  This is gRPC mix task for invoking the client function.
  """
  use Mix.Task

  @shortdoc "Invoke gRPC client function."

  @impl Mix.Task
  def run(_) do
    # start the application
    Mix.Task.run("app.start")

    # invoke client function
    {:ok, response} = GreeterClient.Client.say_hello("Conrad")

    IO.inspect(response)
  end
end
