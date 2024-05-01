# Define global database connections in this file.
# For example:

box::use(
  mongolite[mongo]
)

#' Users db connection
#'
#' @export
users_conn <- mongo(
  collection = Sys.getenv("USERS_COLLECTION"),
  db = Sys.getenv("MONGO_DB")
)
