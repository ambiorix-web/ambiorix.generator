#' Home
#' 
#' Render the homepage.
#' 
#' @inheritParams handler
#' 
#' @name views
#' 
#' @keywords internal
render_home <- function(req, res){
  res$render(
    template_path("home.html"),
    list(
      title = "Hello from R", 
      subtitle = "This is rendered with {glue}"
    )
  )
}

#' @describeIn views Render about page.
#' @keywords internal
render_about <- function(req, res){
  res$render(
    template_path("about.R"),
    list(
      title = "About", 
      name = robj(req$query$name)
    )
  )
}

#' @describeIn views Render 404 page.
#' @keywords internal
render_404 <- function(req, res){
  res$send_file(
    template_path("404.html"),
    status = 404L
  )
}

#' @describeIn views Render 404 page.
#' @keywords internal
render_md <- function(req, res){
  res$md(
    template_path("file.md")
  )
}
