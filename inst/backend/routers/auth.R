box::use(
  ambiorix[Router],
  .. / controllers / auth[
    login,
    delete,
    register
  ]
)

#' Auth router
#'
#' @export
router <- Router$
  new("/api/users")$
  post("/", register)$
  delete("/", delete)$
  post("/login", login)
