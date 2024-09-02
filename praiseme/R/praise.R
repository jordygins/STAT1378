#' Deliver praise
#'
#' @description This function is super useful when you're feeling sad
#' and is useful for everyone.
#'
#' @param name text string; This is the name of the person I want to praise
#' @param punctuation text string; This is our emphasis as a text input.
#' @return Text string with praise
#' @export
#'
#' @examples
#' praise(name = "Steph", punctuation = "!")
praise <- function(name, punctuation = "!"){
  glue::glue("You're the best, {name}{punctuation}")
}
praise("Jordyn")

usethis::use_mit_license("Jordyn")
??praise

usethis::use_package("glue")
usethis::use_testthat()
usethis::use_test("praise")

