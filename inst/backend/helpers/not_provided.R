#' Is argument provided?
#'
#' Checks if a value is "OK". An OK value is NOT:
#' - `""` (An empty string)
#' - `NULL`
#' @param x The value to check.
#' @return Logical. `TRUE` if value is NOT `OK`. `FALSE` otherwise.
#' @examples
#' \dontrun{
#' x <- NULL
#' not_provided(x)
#'
#' y <- 10
#' not_provided(y)
#' }
#' @export
not_provided <- \(x) {
  identical(x, "") || is.null(x)
}

#' Check if any argument is not provided.
#'
#' Checks if any value in `...` is NOT `OK`. See [not_provided()].
#' @param ... Values to check.
#' @return Logical. `TRUE` if any of the values is NOT `OK`. `FALSE` otherwise.
#' @examples
#' \dontrun{
#' x <- NULL
#' y <- 10
#' any_not_provided(x, y) # TRUE
#'
#' a <- "this"
#' b <- ""
#' any_not_provided(a, b) # TRUE
#'
#' e <- "ambiorix"
#' f <- "generator"
#' any_not_provided(e, f) # FALSE
#' }
#' @export
any_not_provided <- \(...) {
  dots <- list(...)

  for (value in dots) {
    if (not_provided(value)) {
      return(TRUE)
    }
  }

  FALSE
}
