clearSecretsWithSubstring <- function( ss, vault ) {
  #' Clear any key-value pair where the pair contains the substring, ss.
  #' 
  #' @return The vault
  #' @export
  #' @examples
  #' 
  library( secret )
  all_secrets <- list_secrets( vault=vault )
  for ( s in all_secrets$secret ) {
    if ( grepl( ss, s ) ) {
      delete_secret( name=s, vault=vault )
    }
  }
}
