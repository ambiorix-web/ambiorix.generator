#' Create Ambiorix Projects
#' 
#' Create the basic structure for Ambiorix projects.
#' 
#' @param path Path where to create ambiorix application.
#' 
#' @section Projects:
#' - `create_basic`: A basic template.
#' - `create_bootstrap`: A bootstrap 5 template.
#' - `create_vue`: A template using vue.
#' 
#' @importFrom assertthat assert_that
#' 
#' @name generator
#' @export
create_basic <- function(path){
  create_proj(path, "basic")
}

#' @name generator
#' @export
create_bootstrap <- function(path){
  create_proj(path, "bootstrap")
}

#' @name generator
#' @export
create_vue <- function(path){
  create_proj(path, "vue")
}

create_proj <- function(path, dir){
  assert_that(not_missing(path))

  if(fs::dir_exists(path))
    stop("Path already exists", call. = FALSE)

  # templates
  project <- system.file(dir, package = "ambiorix.generator")

  # copy
  fs::dir_copy(project, path)
  fs::file_create(paste0(path, "/.here"))
  
  # message
  cli::cli_alert_success("Created ambiorix template: {.val {path}}")
}
