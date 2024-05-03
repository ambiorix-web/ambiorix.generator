not_missing <- function(x){
  !missing(x)
}

assertthat::on_failure(not_missing) <- function(call, env){
  paste("Missing", deparse(call$x))
}

is_valid_project_type <- function(type) {
  type %in% c("backend", "frontend")
}

assertthat::on_failure(is_valid_project_type) <- function(call, env) {
  "Invalid project type. Must be one of 'frontend' or 'backend'."
}
