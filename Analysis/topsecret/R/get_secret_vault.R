get_secret_vault <- function() {
  #' Create a data iterator for MEF files
  #' Assumes that the user has already created an SSH key.
  #' 
  #' @return A link to a vault. Creates a new one if none exist.
  #' @export
  #' @examples
  #' vault <- get_secret_vault()

  vault <- file.path("~/.secret", ".vault")
  if ( !dir.exists( vault ) ) {
    secret::create_vault(vault)
    si <- Sys.info()
    username <- si[['user']]
    secret::add_user( username, public_key=secret::local_key(), vault = vault )
  }
  return( vault )
}
