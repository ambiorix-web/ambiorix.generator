#' Build
#' 
#' build the application
#' 
#' @return An object of class `Ambiorix`.
#' 
#' @export 
build <- function() {
  app <- Ambiorix$new()

  # 404 page
  app$not_found <- render_404

  # serve static files
  app$static(assets_path(), "static")

  # homepage
  app$get("/", render_home)

  # about
  app$get("/about", render_about)

  # md
  app$get("/md", render_md)

  # websocket 
  app$receive("hello", function(msg, ws){
    print(msg)
    ws$send("hello", "Hello back! (sent from R)")
  })

  return(app)
}
