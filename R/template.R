#' Add a template file
#' 
#' Convenience function to create new templates in the `templates` directory.
#' 
#' @param name Name of the file, without extension.
#' 
#' @section Functions:
#' - `add_template_basic`: Add a basic template.
#' - `add_template_bootstrap`: Add a basic template for bootstrap 4.
#' 
#' @name templates
#' @export
add_template_basic <- function(name){
  add_temp(name, "basic")
  invisible()
}

#' @rdname templates
#' @export
add_template_bootstrap <- function(name){

  add_temp(name, "bootstrap")
  invisible()
}

add_temp <- function(name, type){
  # checks
  assert_that(not_missing(name))
  assert_that(fs::dir_exists("templates"), msg = "Missing templates directory")

  # template
  base_path <- sprintf("%s/templates/home.html", type)
  template <- system.file(base_path, package = "ambiorix.generator")

  # destination
  dest <- gsub("\\.html", "", name) # remove extension if passed
  dest_path <- here::here("templates", sprintf("%s.html", dest))
  assert_that(!fs::file_exists(dest_path), msg = "Template already exists")

  fs::file_copy(template, dest_path)

  cli::cli_alert_success("Created {.file {sprintf('templates/%s.html', name)}}")

  invisible()
}
