#' Concatenate Two Strings
#'
#' Concatenates two character vectors elementwise using `paste()` and returns
#' a custom S3 object of class `concat_result`.
#'
#' @param x A character vector.
#' @param y A character vector.
#'
#' @return An object of class `concat_result`, containing the original vectors and the result.
#' @export
#'
#' @examples
#' res <- concat_strings("Hello", "World")
#' print(res)
#' summary(res)
#'
#' res2 <- concat_strings(c("Good", "Bad"), c("Morning", "Luck"))
#' plot(res2)
concat_strings <- function(x, y) {
  result <- paste(x, y)
  structure(
    list(x = x, y = y, result = result),
    class = "concat_result"
  )
}
