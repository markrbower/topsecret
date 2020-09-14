create_ssh_keys <- function() {
  #' Create SSH keys and store into the ~/.ssh directory
  #' 
  #' @export
  #' @examples
  system("ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa <<< y 2>&1 >/dev/null")
}