box::use(
  ambiorix[Ambiorix],
  . / helpers / get_host[get_host],
  . / helpers / get_port[get_port],
  . / middleware / error[error_handler],
  . / routers / base[base_router = router]
)

Ambiorix$
  new(host = get_host(), port = get_port())$
  set_error(error_handler)$
  static("public", "static")$
  use(base_router)$
  start()
