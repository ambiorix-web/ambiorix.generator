box::use(
  htmltools[tags, tagList]
)

#' Create a card
#'
#' @param ... [htmltools::tags()] to include in the card.
#' @return [htmltools::tags$div()]
#' @export
card <- \(...) {
  tags$div(
    class = "card",
    ...
  )
}

#' Create an item card
#'
#' A vectorized function to create item cards.
#' @param title List or character vector. Card title.
#' @param img List or character vector. Path to image to include in card.
#' @param description List or character vector of same length as `title`.
#' Item description.
#' @export
item_card <- \(title, img, description) {
  Map(
    f = \(card_title, card_img, card_desc) {
      card(
        tags$img(class = "img", src = card_img),
        tags$h4(class = "heading", card_title),
        tags$p(class = "description", card_desc),
        tags$button(class = "btn fade", "Purchase")
      )
    },
    title,
    img,
    description
  )
}
