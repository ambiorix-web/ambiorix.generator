box::use(
  htmltools[tags, tagList],
  . / nav[nav],
  . / card[card],
)

#' Home page
#'
#' @export
page <- \() {
  tagList(
    nav(),
    tags$div(
      class = "general-container",
      card(
        tags$h3("Hi there!"),
        tags$p(
          "Explore our",
          tags$a(href = "/products", "products"),
          "or",
          tags$a(href = "/contact", "contact us")
        )
      )
    )
  )
}
