box::use(
  R6[R6Class]
)

#' User Auth Schema
#'
#' Ideally, you should use the methods defined in this class in
#' '../controllers/auth.R'
#' @export
Auth <- R6Class(
  classname = "Auth",
  public = list(
    name = NULL,
    email = NULL,
    password = NULL,

    #' Init method
    #'
    #' Define a user
    #' @param email User email.
    #' @param password User password.
    #' @param name Full name of user.
    initialize = \(email, password = NULL, name = NULL) {
      self$name <- name
      self$email <- email
      self$password <- password
    },

    #' Check if user exists
    #'
    #' @return Logical. `TRUE` if user exists, `FALSE` otherwise.
    user_exists = \() {
      # TODO: check if user exists
      return()
    },

    #' Register new user
    #'
    #' Registers a new user & sends a verification email.
    #' @return self (invisibly)
    register = \() {
      # TODO: register user
      return()
    },

    #' Sign in user
    #'
    #' @details If email is not verified, sends verification email & throws an
    #' error.
    #' @return A data.frame object containing user details with a jwt token
    #' added.
    login = \() {
      # TODO: login user
      return()
    },

    #' Delete user account
    #'
    #' @return self (invisibly)
    delete = \() {
      # TODO: delete user account
      return()
    }
  )
)
