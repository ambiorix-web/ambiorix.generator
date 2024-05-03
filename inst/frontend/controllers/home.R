box::use(
  htmltools[tags],
  .. / store / home[home_page = page],
  .. / templates / template_path[template_path]
)

#' Handle GET at '/'
#'
#' @export
home_get <- \(req, res) {
  res$render(
    template_path("page.html"),
    list(
      title = "Home | Goated",
      content = home_page
    )
  )
}
