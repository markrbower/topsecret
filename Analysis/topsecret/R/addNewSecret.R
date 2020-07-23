addNewSecret <- function( name, value=character(0), users, vault ) {
  #' Addition of key-value pairs.
  #' If 'value' is not provided, then prompt for it.
  #' 
  #' @param name A string containing the name, or key, of the secret to be added.
  #' @param value A string containing the value of the secret to be added.
  #' @param users A list of current users who will have access to the secret.
  #' @param vault A string containing the location of the vault.
  #' @return The value stored.
  #' @export
  #' @examples
  #' addNewSecret( "remove_me_1234", value="junk",
  #'     users=secret::list_users( get_secret_vault() )[1],
  #'     vault=get_secret_vault() )
  #' secret::delete_secret(name="remove_me_1234",vault=get_secret_vault() )

  if ( length(value)==0 ) {
    value <- readline( paste0( "Enter ", name, ": ") )
  }
  secret::add_secret(name=name,value=value,users=users,vault=vault)
  return( value )
}
