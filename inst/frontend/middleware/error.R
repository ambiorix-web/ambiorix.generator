box::use(
  cli[cli_alert_danger]
)

#' Error handler
#'
#' @param error Error object. See [stop()].
#' @export
error_handler <- \(req, res, error = NULL) {
  if (!is.null(error)) {
    error_msg <- conditionMessage(error)
    cli_alert_danger("Error: {error_msg}")
  }

  msg <- "Error 500: A server error occurred!"
  
  res$
    set_status(500L)$
    send(msg)
}
