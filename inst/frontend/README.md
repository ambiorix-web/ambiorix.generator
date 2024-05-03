## Project Name

This is the frontend for my app.

## Prerequisites

- Install [`{box}`](https://klmr.me/box/):

  ```r
  install.packages('box')
  ```

- Define these variables in your env file (`.Renviron`):

  ```r
  PORT = 3000
  HOST = 127.0.0.1
  ```
  Edit the values as required. They dictate the port & host on which to run the
  frontend on.

## Start App

`index.R` is the entry point.

To start the app, run this from the terminal:

```bash
Rscript index.R
```

To enable autoreloading, checkout [Live Reloading In Ambiorix](https://github.com/kennedymwavu/ambiorix-examples/tree/main/10_live_reloading).
