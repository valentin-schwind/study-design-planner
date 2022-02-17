sampleSize <- function(cohensf, groups, powerlevel, alpha) {
  if (!requireNamespace("pwr", quietly = TRUE)) {
    stop(
      "Package \"pwr\" must be installed to use this function.",
      call. = FALSE
    )
  }
  return(pwr::pwr.anova.test(f=cohensf,k=groups,power=powerlevel,sig.level=alpha)$n)
}
