box::use(
  ambiorix[Ambiorix],
  . / helpers / get_port[get_port],
  . / helpers / get_host[get_host],
  . / middleware / error[error_handler],
  . / routers / auth[auth_router = router]
)

Ambiorix$
  new(host = get_host(), port = get_port())$
  set_error(error_handler)$
  use(auth_router)$
  start(open = FALSE)
