sampleSize <- function(grps, cohensf, alpha, pwr) {
  if (!requireNamespace("pwr", quietly = TRUE)) {
    stop(
      "Package \"pwr\" must be installed to use this function.",
      call. = FALSE
    )

  }
  invisible(capture.output(result <- pwr::pwr.anova.test(k = grps, f = cohensf, sig.level = alpha, power = pwr)$n))
  return(result)
}
