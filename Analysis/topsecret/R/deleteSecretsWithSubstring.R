deleteSecretsWithSubstring <- function( name, vault ) {
  #' Clear any key-value pair where the pair contains the substring, ss.
  #' 
  #' @param name A string containing the substring to be matching against all keys.
  #' @param vault A string containing location of the vault.
  #' @return The vault
  #' @export
  #' @examples
  #' addNewSecret( "remove_me_1234", value="junk",
  #'     users=secret::list_users( get_secret_vault() )[1],
  #'     vault=get_secret_vault() )
  #' clearSecretsWithSubstring(ss="remove_me_1234",vault=get_secret_vault() )

  all_secrets <- secret::list_secrets( vault=vault )
  for ( s in all_secrets$secret ) {
    if ( grepl( name, s ) ) {
      secret::delete_secret( name=s, vault=vault )
    }
  }
}
