# Greeter Client

Client app. Makes gRPC requests to greeter server app.

Start iex session with `iex -S mix`.

Related repos:

- [Greeter Server](https://github.com/conrdwwt/greeter-server-elixir)
- [Greeter Proto](https://github.com/conradwt/greeter-proto-elixir)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `greeter_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:greeter_client, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/greeter_client>.
