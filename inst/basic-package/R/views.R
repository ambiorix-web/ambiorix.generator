#' Home
#' 
#' Render the homepage.
#' 
#' @inheritParams handler
#' 
#' @name views
#' 
#' @keywords internal
home_get <- function(req, res){
  res$render(
    template_path("file.html"),
    list(
      title = "Hello from R", 
      subtitle = "This is rendered with {glue}"
    )
  )
}

#' About
#' 
#' Render the about.
#' 
#' @inheritParams handler
#' 
#' @name views
#' @keywords internal
about_get <- function(req, res) {
  res$send(
    "About us!"
  )
}

#' Error
#' 
#' Rendering errors (!= 200).
#' 
#' @name errors
#' 
#' @keywords internal
render_404 <- function(req, res){
  res$send_file(
    template_path("404.html"),
    status = 404L
  )
}

#' @rdname errors
#' @keywords internal
render_500 <- function(req, res){
  res$send(
    "Internal server error",
    status = 500L
  )
}
