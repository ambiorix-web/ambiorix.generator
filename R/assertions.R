not_missing <- function(x){
  !missing(x)
}

assertthat::on_failure(not_missing) <- function(call, env){
  paste("Missing", deparse(call$x))
}
