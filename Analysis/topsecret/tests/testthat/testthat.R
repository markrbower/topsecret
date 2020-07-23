library(testthat)
library(topsecret)

context("A test of topsecret things.")

test_that("get_secret_vault works",{
  expect_equal( get_secret_vault(), "~/.secret/.vault" )
})

test_that("the temp secret isn't there",{
  expect_false( "remove_me_1234_test" %in% list_secrets(get_secret_vault())$secret )
})

test_that("a user exists",{
  expect_true( length(list_users(get_secret_vault() ) ) > 0 )
})

test_that("addNewSecret works",{c
  users <- list_users( get_secret_vault() )
  addNewSecret( name="remove_me_1234_test", value=value, users = c(users[1]), vault=get_secret_vault() )
  expect_true( "remove_me_1234_test" %in% list_secrets(vault)$secret )
  delete_secret( name="remove_me_1234_test", vault=get_secret_vault())
})

test_that("deleteSecretWithSubstring works",{c
  users <- list_users( get_secret_vault() )
  addNewSecret( name="remove_me_1234_test", value=value, users = c(users[1]), vault=get_secret_vault() )
  deleteSecretsWithSubstring( name="remove", vault=get_secret_vault())
  expect_false( "remove_me_1234_test" %in% list_secrets(get_secret_vault())$secret )
})

test_that("addNewUserToVault works",{
  users <- list_users( get_secret_vault() )
  expect_false( "remove_me_Pippy" %in% users )
  addNewUserToSecretVault(username="remove_me_Pippy", vault=get_secret_vault())
  users <- list_users( get_secret_vault() )
  expect_true( "remove_me_Pippy" %in% users )
  delete_user(email="remove_me_Pippy", vault=get_secret_vault() )
})



