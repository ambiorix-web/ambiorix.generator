box::use(
  htmltools[tags]
)

#' Create nav list items
#'
#' A vectorized way to create navbar list items.
#' @param label List or character vector. Label of the item.
#' @param href List or character vector of same length as `label`.
#' `href` attribute of the item's anchor tag.
#' @param active String. The active label. Has to be one of `label`s.
#' @return [htmltools::tagList()]
#' @export
nav_li <- \(label, href, active) {
  Map(
    f = \(item_label, item_href) {
      item_active <- NULL
      aria_current <- NULL
      if (identical(item_label, active)) {
        item_active <- NA
        aria_current <- "page"
      }

      tags$li(
        tags$a(
          href = item_href,
          active = item_active,
          `aria-current` = aria_current,
          item_label
        )
      )
    },
    label,
    href
  )
}

#' Navigation bar
#'
#' @param title String. Nav title.
#' @param label Character vector. Labels of nav items.
#' @param href Character vector. `href` attributes of the `label`s.
#' @param active String. The active nav item. Has to be one of `label`s.
#' @return [htmltools::tags$nav()]
#' @export
nav <- \(
  title = "GOATED",
  label = c("Home", "Products", "Contact"),
  href = c("/", "/products", "/contact"),
  active = "Home"
) {
  tags$nav(
    class = "navbar",
    tags$div(
      class = "navbar-container",
      tags$h3(
        tags$a(href = "/", title)
      ),
      tags$ul(
        nav_li(
          label = label,
          href = href,
          active = active
        )
      )
    )
  )
}
