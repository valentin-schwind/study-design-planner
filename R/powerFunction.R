

powerFunction <- function(studyDesign, N, means, SD, labels, wcorr, alpha) {
  if (!requireNamespace("Superpower", quietly = TRUE)) {
    stop(
      "Package \"Superpower\" must be installed to use this function.",
      call. = FALSE
    )
  }
  round_df <- function(df, digits = 3) {
    nums <- vapply(df, is.numeric, FUN.VALUE = logical(1))
    df[,nums] <- round(df[,nums], digits = digits)
    (df)
  }

  invisible(capture.output(design_result <- Superpower::ANOVA_design(design = studyDesign, n = N,  mu = means, sd = SD, labelnames = labels, r = wcorr, plot = F)))
  invisible(capture.output(exact_result  <- Superpower::ANOVA_exact(design_result, alpha_level = alpha)))
  exact_result$main_results
}
