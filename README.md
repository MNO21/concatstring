concatstring
================

<!-- README.md is generated from README.Rmd. Please edit that file -->


<!-- badges: start -->

[![R-CMD-check](https://github.com/MNO21/concatstring/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/MNO21/concatstring/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`concatstring` is a lightweight R package that provides a clean and
extensible way to concatenate character vectors elementwise. It wraps
results in a custom S3 class `concat_result`, allowing enhanced
printing, summarisation, and visualisation.

------------------------------------------------------------------------

## Installation

You can install the development version of `concatstring` from GitHub
using [pak](https://pak.r-lib.org):

``` r
# install.packages("pak")
pak::pak("MNO21/concatstring")
```

------------------------------------------------------------------------

## Example

Load the package and use `concat_strings()` to combine text:

``` r
library(concatstring)

res <- concat_strings("Hello", "World")
print(res)
#> Concatenated result:
#> [1] "Hello World"
```

It works elementwise with character vectors:

``` r
concat_strings(c("Fast", "Tiny", "Blue"), c("Car", "Planet", "Sky"))
```

------------------------------------------------------------------------

## Summary and Plotting

Summarise the result:

``` r
summary(res)
#> Summary of concatenated result:
#> Number of input elements: 1
#> First few results:
#> [1] "Hello World"
```

Plot the length of each concatenated string:

``` r
multi <- concat_strings(c("Short", "Longer", "Longest"), c("One", "Word", "Phrase"))
plot(multi)
```

<img src="man/figures/README-plot-1.png" width="100%" />

------------------------------------------------------------------------

## License

MIT © 2025 Mikkel Nørgaard, Rasmus Flathen Sønder, Chris Møller Nørgaard

------------------------------------------------------------------------

## Learn More

This package is intended as a teaching example and demonstration of S3
class systems, lightweight package structure, and clean testing with
`{tinytest}`.

\`\`\`
