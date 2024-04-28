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

#' @param use_box Logical. Whether to use [`{box}`](https://klmr.me/box/) for a
#' modular app structure.
#' Default is `TRUE`.
#' If `FALSE`, the template will be same as if you used [create_package()].
#' @name generator
#' @export
create_backend <- function(path, use_box = TRUE) {
  if (use_box) create_proj(path, "backend") else create_package(path)
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
