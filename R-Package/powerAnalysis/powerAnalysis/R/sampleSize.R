#' Returns the sample size for a one-way ANOVA
#'
#' This function takes the power package to return only N of the estimates size
#' @param grps an array of conditions
#' @param SD estimated pooled standard deviation
#' @param pwr estimated statistical power
#' @param alpha alpha criterion for rejecting the null hypothesis
#' @return The sample size
#' @export
#'
sampleSize <- function(grps, SD, pwr, alpha) {
  if (!requireNamespace("power", quietly = TRUE)) {
    return(power.anova.test(groups = grps, between.var = SD, within.var = SD, power = pwr,sig.level=alpha)$n)
  }
}
