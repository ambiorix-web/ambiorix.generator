box::use(
  ambiorix[parse_multipart],
  .. / helpers / not_provided[any_not_provided]
)

#' Register new user
#'
#' Handle POST on `/api/users`.
#' @export
register <- \(req, res) {
  body <- parse_multipart(req)
  name <- body$name
  email <- body$email
  password <- body$password

  if (any_not_provided(name, email, password)) {
    response <- list(
      code = 400L,
      msg = "Please provide all input fields.",
      required_fields = c("name", "email", "password")
    )

    return(
      res$set_status(400L)$json(response)
    )
  }

  # TODO: create user account & edit 'response' as necessary.

  response <- list(code = 200L, msg = "Account created!")

  res$json(response)
}

#' Sign in user
#'
#' Handle POST on `/api/users/login`.
#' @export
login <- \(req, res) {
  body <- parse_multipart(req)
  email <- body$email
  password <- body$password

  if (any_not_provided(email, password)) {
    response <- list(code = 400L, msg = "Invalid credentials!")
    return(
      res$set_status(400L)$json(response)
    )
  }

  # TODO: Sign in user & edit 'response' as necessary.

  response <- list(code = 200L, msg = "Logged in!")

  res$json(response)
}

#' Delete user account
#'
#' Handle DELETE at `/api/users`
#' @export
delete <- \(req, res) {
  body <- parse_multipart(req)
  email <- body$email
  password <- body$password

  if (any_not_provided(email, password)) {
    response <- list(code = 400L, msg = "Invalid credentials!")
    return(
      res$set_status(400L)$json(response)
    )
  }

  # TODO: Delete user account & edit 'response' as necessary.

  response <- list(code = 200L, msg = "Account deleted!")
  res$json(response)
}
