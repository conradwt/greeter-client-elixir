# Greeter Client

Client app. Makes gRPC requests to greeter server app.

1. start iex session

   ```zsh
   iex -S mix
   ```

2. invoke the gRPC client function

   ```elixir
   GreeterClient.Client.say_hello("Conrad")
   ```

## Related repos

- [Greeter Server](https://github.com/conradwt/greeter-server-elixir)
- [Greeter Proto](https://github.com/conradwt/greeter-proto-elixir)

## License

Greeter Client is released under the [MIT license](./LICENSE.md).

## Copyright

Copyright &copy; 2022 - 2023 Conrad Taylor. All rights reserved.
