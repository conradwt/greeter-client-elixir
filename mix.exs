defmodule GreeterClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :greeter_client,
      version: "0.1.0",
      elixir: "~> 1.18.2",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:greeter_proto, github: "conradwt/greeter-proto-elixir"}
    ]
  end
end
