box::use(
  .. / store / products[page],
  .. / templates / template_path[template_path]
)

#' Handle GET at '/products'
#'
#' @export
products_get <- \(req, res) {
  res$render(
    template_path("page.html"),
    list(
      title = "Products | Goated",
      content = page()
    )
  )
}
