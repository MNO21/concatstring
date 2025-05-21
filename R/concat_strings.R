#' Concatenate Two Strings
#'
#' Concatenates two character vectors elementwise using `paste()`.
#'
#' @param x A character vector.
#' @param y A character vector.
#'
#' @return A character vector with `x` and `y` pasted together elementwise.
#' @export
#'
#' @examples
#' concat_strings("Hello", "World")
#' concat_strings(c("Good", "Bad"), c("Morning", "Luck"))
concat_strings <- function(x, y) {
  paste(x, y)
}
