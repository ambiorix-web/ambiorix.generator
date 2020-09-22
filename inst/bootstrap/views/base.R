# render homepage
render_home <- function(req, res){
  res$render("home", list(title = "Hello from R", subtitle = "This is rendered with {glue}"))
}

# 404: not found
render_404 <- function(req, res){
  res$send_file("404", status = 404L)
}