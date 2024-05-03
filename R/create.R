#' Create Ambiorix Projects
#' 
#' Create the basic structure for Ambiorix projects.
#' 
#' @param path Path where to create ambiorix application.
#' 
#' @section Projects:
#' - `create_package`: A basic app in R package form (recommended).
#' - `create_basic`: A basic template.
#' - `create_bootstrap`: A bootstrap 5 template.
#' - `create_vue`: A template using vue.
#' 
#' @importFrom assertthat assert_that
#' 
#' @name generator
#' @export
create_basic <- function(path){
  .Deprecated("create_package", package = "ambiorix.generator")
  create_proj(path, "basic")
}

#' @name generator
#' @export
create_bootstrap <- function(path){
  .Deprecated("create_package", package = "ambiorix.generator")
  create_proj(path, "bootstrap")
}

#' @name generator
#' @export
create_vue <- function(path){
  .Deprecated("create_package", package = "ambiorix.generator")
  create_proj(path, "vue")
}

#' @name generator
#' @export
create_package <- function(path){
  create_proj(path, "basic-package")
  edit_package(path)
}

#' Create a modular app structure using `{box}`
#'
#' This approach creates a modular & nested app template which uses
#' [{box}](https://klmr.me/box/) to load & unload modules.
#' @param path String. Path to create template in.
#' If `FALSE`, the template will be same as if you used [create_package()].
#' @param project_type String. The project type. Either "backend" (default) or
#' "frontend".
#' @name generator
#' @examples
#' \dontrun{
#' create_modular(path = ".", project_type = "backend")
#' create_modular(path = ".", project_type = "frontend")
#' }
#' @export
create_modular <- function(path, project_type = "backend") {
  assert_that(is_valid_project_type(project_type))
  create_proj(path, project_type)
}

#' Create Project
#' 
#' Create a project, technically just copies files.
#' 
#' @param path Path to copy to.
#' @param dir Internal directory containing project.
#' 
#' @keywords internal
create_proj <- function(path, dir){
  assert_that(not_missing(path))

  if(fs::dir_exists(path))
    stop("Path already exists", call. = FALSE)

  # templates
  project <- system.file(dir, package = "ambiorix.generator")

  # copy
  fs::dir_copy(project, path)
  
  # message
  cli::cli_alert_success("Created ambiorix template: {.val {path}}")
}

#' Edit Package
#' 
#' Edits the package name after files have been created.
#' 
#' @param path Path to the package
#' 
#' @keywords internal
edit_package <- function(path) {
  desc <- readLines(file.path(path, "DESCRIPTION"))
  desc <- gsub("#PKG#", basename(path), desc)
  writeLines(desc, file.path(path, "DESCRIPTION"))

  assets <- readLines(file.path(path, "R", "assets.R"))
  assets <- gsub("#PKG#", basename(path), assets)
  writeLines(assets, file.path(path, "R", "assets.R"))
}
