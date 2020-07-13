keys <- function(x) {
  #' Return a list of keys currently in the vault
  #' 
  #' @return A list of keys currently in the vault.
  #' @export
  #' @examples
  #' keys <- keys()
  
  file.path(system.file("user_keys", package = "secret"), x)
}
