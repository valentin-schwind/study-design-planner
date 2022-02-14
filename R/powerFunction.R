powerFunction <- function(studyDesign, N, means, SD, labels, wcorr, alpha) {
  if (!requireNamespace("Superpower", quietly = TRUE)) {
    stop(
      "Package \"Superpower\" must be installed to use this function.",
      call. = FALSE
    )
  }
  invisible(capture.output(design_result <- ANOVA_design(design = studyDesign, n = N,  mu = means, sd = SD, labelnames = labels, r = wcorr, plot = F)))
  invisible(capture.output(exact_result <- ANOVA_exact2(design_result, alpha_level = alpha)))
  return (list(min(exact_result$main_results$power),max(exact_result$main_results$power)))

}
