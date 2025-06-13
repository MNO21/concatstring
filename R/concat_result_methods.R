#' Print method for concat_result objects
#'
#' @param x An object of class `concat_result`.
#' @param ... Additional arguments (ignored).
#' @export
print.concat_result <- function(x, ...) {
  cat("Concatenated result:\n")
  print(x$result)
  invisible(x)
}

#' Summary method for concat_result objects
#'
#' @param object An object of class `concat_result`.
#' @param ... Additional arguments (ignored).
#' @export
summary.concat_result <- function(object, ...) {
  cat("Summary of concatenated result:\n")
  cat("Number of input elements:", length(object$result), "\n")
  cat("First few results:\n")
  print(head(object$result))
  invisible(object)
}

#' Plot method for concat_result objects
#' @param x An object of class `concat_result`.
#' @param ... Additional graphical arguments passed to barplot.
#' @export
plot.concat_result <- function(x, ...) {
  if (length(x$result) < 2) {
    warning("Not enough data to create a meaningful plot. Need at least 2 strings.")
    return(invisible(NULL))
  }

  # Set bottom margin to allow space for rotated labels
  old_par <- par(mar = c(8, 4, 4, 2) + 0.1)

  lengths <- nchar(x$result)
  barplot(
    heights <- lengths,
    names.arg = x$result,
    las = 2, # rotate labels vertical
    main = "Length of Concatenated Strings",
    ylab = "Number of Characters",
    col = "steelblue",
    ...
  )

  # Restore previous plotting parameters
  par(old_par)
}

#' @importFrom graphics barplot par
#' @importFrom utils head
NULL
