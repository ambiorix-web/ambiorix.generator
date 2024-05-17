box::use(
  ambiorix[Router],
  .. / controllers / home[home_get],
  .. / controllers / contact[contact_get],
  .. / controllers / products[products_get]
)

#' Products router
#'
#' @export
router <- Router$
  new("/")$
  get("/", home_get)$
  get("/contact", contact_get)$
  get("/products", products_get)
