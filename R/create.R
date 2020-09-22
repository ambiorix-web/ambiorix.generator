#' Create Ambiorix Projects
#' 
#' Create the basic structure for Ambiorix projects.
#' 
#' @param path Path where to create ambiorix application.
#' 
#' @section Projects:
#' - `create_basic`: A basic template.
#' - `create_bootstrap`: A bootstrap 4 template.
#' 
#' @importFrom assertthat assert_that
#' 
#' @name generator
#' @export
create_basic <- function(path){
  assert_that(not_missing(path))

  if(fs::dir_exists(path))
    stop("Path already exists", call. = FALSE)

  project <- system.file("basic", package = "ambiorix.generator")
  fs::dir_copy(project, path)
  cli::cli_alert_success("Created ambiorix template: {.val {path}}")
}

#' @name generator
#' @export
create_bootstrap <- function(path){
  assert_that(not_missing(path))

  if(fs::dir_exists(path))
    stop("Path already exists", call. = FALSE)

  project <- system.file("bootstrap", package = "ambiorix.generator")
  fs::dir_copy(project, path)
  cli::cli_alert_success("Created ambiorix template: {.val {path}}")
}
