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

First create the image
```shell
docker build -t alexandreservian/elixir:laster .
```

After create container
```shell
docker container run -d -v $(pwd):/usr/src/workspace -p 8080:8080 alexandreservian/elixir:laster
```

## Run wiwh docker-compose

First create the image
```shell
docker-compose build
```

After create container
```shell
docker-compose up -d
```

After access your localhost at port 8008 like `http://localhost:8080/`