#' Get host to run app on from `.Renviron` file
#'
#' Looks for the env var `HOST`, if not found defaults to
#' `default`.
#' @param default String. Default value to use as host in case none is set in
#' `.Renviron`.
#' @return String.
#' @examples
#' \dontrun{
#' get_host()
#' }
#' @export
get_host <- \(default = "127.0.0.1") {
  host <- Sys.getenv("HOST")
  if (host == "") default else host
}
