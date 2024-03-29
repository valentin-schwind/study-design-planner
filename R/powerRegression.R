powerRegression <- function(ivs, participants, fsquared, alpha) {
  if (!requireNamespace("pwr", quietly = TRUE)) {
    stop(
      "Package \"pwr\" must be installed to use this function.",
      call. = FALSE
    )
  }
  invisible(capture.output(result <- pwr::pwr.f2.test(u = ivs, v = participants - ivs - 1, f2 = fsquared, sig.level = alpha)))
  return(result)
}
