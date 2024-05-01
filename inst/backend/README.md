## Project Name

This is the api for my app. 

## Prerequisites

- Install [`{box}`](https://klmr.me/box/):

  ```r
  install.packages('box')
  ```

- Define these variables in your env file (`.Renviron`):

  ```r
  PORT = 5000
  HOST = 127.0.0.1
  ```

  Edit the values as required.

## Start API

`server.R` is the entry point.

To start the api, run this from the terminal:

```
Rscript server.R
```

To enable autoreloading, checkout [Live Reloading In Ambiorix](https://github.com/kennedymwavu/ambiorix-examples/tree/main/10_live_reloading).
