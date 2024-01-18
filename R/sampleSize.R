sampleSize <- function(grps, f, alpha, pwr) {
  if (!requireNamespace("pwr", quietly = TRUE)) {
    stop(
      "Package \"pwr\" must be installed to use this function.",
      call. = FALSE
    )

  }
  return(pwr.anova.test(k = grps, f = f, sig.level = alpha, power = pwr)$n)
}
