get <- function( name ) {
  #' @param name string containing the name of the secret
  #' @return The value stored.
  #' @export
  #' @examples
  #' mef_password <- get( "MEF_password" )
  vault <- topsecret::get_secret_vault()
  result <- secret::get_secret(name=name,key=secret::local_key(),vault=vault)
  return( result )
}