% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addNewUserToSecretVault.R
\name{addNewUserToSecretVault}
\alias{addNewUserToSecretVault}
\title{Add users who may access the vault.}
\usage{
addNewUserToSecretVault(username, vault)
}
\arguments{
\item{username}{A string containing the username to be added.}

\item{vault}{A string containing location of the vault.}
}
\value{
A
}
\description{
Add users who may access the vault.
}
\examples{
  addNewUserToSecretVault( username='alice', vault=get_secret_vault() )
  secret::delete_user("alice",vault=get_secret_vault() )
}
