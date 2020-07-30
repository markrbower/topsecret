init_here <- function() {
  #' Override the tree search to set the root directory for here().
  #' 
  #' @export
  #' @examples
  #' init_here()
  `%!in%` = Negate(`%in%`)
  files <- dir( all.files = T )
  while ( ".here" %!in% files ) {
    setwd("..")
    getwd()
    files <- dir( all.files = T )
  }
  requireNamespace("here")
}
