box::use(
  htmltools[tags, tagList],
  . / nav[nav],
  . / card[card]
)

#' Contact page
#'
#' @export
page <- \() {
  labels <- c(
    "Visit our website",
    "GitHub",
    "Twitter"
  )

  hrefs <- c(
    "https://ambiorix.dev/docs/ambiorix",
    "https://github.com/devOpifex/ambiorix",
    "https://twitter.com/devOpifex"
  )

  details <- Map(
    f = \(label, href) {
      card(
        tags$h6(
          tags$a(
            href = href,
            target = "_blank",
            label
          )
        )
      )
    },
    labels,
    hrefs
  )

  tagList(
    nav(active = "Contact"),
    tags$div(
      class = "container",
      details
    )
  )
}
