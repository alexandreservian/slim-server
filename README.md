# Slim Server

This is a slim server to handle a simple api application.

> Before, run `mix deps.get`

## Run in iex mode

Create a process, and after access `http://localhost:4000`. 

```iex
{:ok, pid} = Plug.Cowboy.http SlimServer.SimpleCall, %{}
```

Or, you can run this server with:
```shell
mix run --no-halt
```

## Run with docker

First create image
```shell
docker build -t alexandreservian/elixir:laster .
```

After create container
```shell
docker container run -d -p 8080:8080 alexandreservian/elixir:laster
```