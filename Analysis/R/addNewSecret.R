addNewSecret <- function( name, users, vault ) {
  #' Online addition of key-value pairs.
  #' 
  #' @return The value stored.
  #' @export
  #' @examples
  #' 
  
  value <- readline( paste0( "Enter ", name, ": ") )
  add_secret(name=name,value=value,users=users,vault=vault)
  return( value )
}
