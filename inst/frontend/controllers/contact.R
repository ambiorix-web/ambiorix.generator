box::use(
  .. / store / contact[page],
  .. / templates / template_path[template_path]
)

#' Handle GET at '/contact'
#'
#' @export
contact_get <- \(req, res) {
  res$render(
    template_path("page.html"),
    list(
      title = "Contact | Goated",
      content = page()
    )
  )
}
