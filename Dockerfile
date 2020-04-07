FROM alpine:3.11

LABEL version="1.0" maintainer="Alexandre Servian <alexandreservian@gmail.com>"

ENV WORKSPACE=/usr/src/workspace

RUN apk add --update elixir && \
    mix local.hex --force && \
    mkdir -p ${WORKSPACE}

WORKDIR ${WORKSPACE}

COPY mix.exs mix.lock ./

RUN mix deps.get

COPY . .

EXPOSE 8080

CMD [ "mix", "run", "--no-halt" ]