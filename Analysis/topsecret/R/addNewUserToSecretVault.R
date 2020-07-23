addNewUserToSecretVault <- function( username, vault ) {
  #' Add users who may access the vault. 
  #' 
  #' @param username A string containing the username to be added.
  #' @param vault A string containing location of the vault.
  #' @return A
  #' @export
  #' @examples
  #'   addNewUserToSecretVault( username='alice', vault=get_secret_vault() )
  #'   secret::delete_user("alice",vault=get_secret_vault() )

  current_users = secret::list_users( vault = vault )
  `%nin%` = Negate(`%in%`)
  if ( username %nin% current_users ) {
    secret::add_user( email=username, public_key = "~/.ssh/id_rsa_root.pub", vault = vault )
  }
}
