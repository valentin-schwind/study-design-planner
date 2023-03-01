#' Returns the sample size for a one-way ANOVA
#'
#' This function takes the power package to return only N of the estimates size
#' @param ivs number of independent variables
#' @param N number of samples
#' @param fsquared estimated effect size as f-squared
#' @param alpha alpha criterion for rejecting the null hypothesis
#' @return The sample size
#' @export
#'
powerRegression <- function(ivs, N, fsquared, alpha) {
  if (!requireNamespace("pwr", quietly = TRUE)) {
    stop(
      "Package \"pwr\" must be installed to use this function.",
      call. = FALSE
    )
    invisible(capture.output(result <- pwr::pwr.f2.test(u = ivs, v = N - ivs - 1, f2 = fsquared, sig.level = alpha)))
    return(result)
  }
}
