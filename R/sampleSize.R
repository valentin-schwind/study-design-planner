sampleSize <- function(grps, SD, pwr, alpha) {
  if (!requireNamespace("power", quietly = TRUE)) {
    stop(
      "Package \"power\" must be installed to use this function.",
      call. = FALSE
    )

  }
  return(power.anova.test(groups = grps, between.var = SD, within.var = SD, power = pwr,sig.level=alpha)$n)
}
