#' Returns the statistical power for a multi-factorial ANOVA
#'
#' This function takes the Superpower package to return N of the estimates size
#' @param studyDesign an string including the study design, e.g. 2b*4w
#' @param N sample size in each condition
#' @param means Vector specifying mean for each condition
#' @param SD estimated pooled standard deviation
#' @param labels string array list to specify the factor names and conditions
#' @param wcorr correlation between dependent variables (single value or matrix)
#' @param alpha alpha criterion for rejecting the null hypothesis
#' @return The power analysis results for ANOVA level effects
#' @export
#'
powerANOVA <- function(studyDesign, N, means, SD, labels, wcorr, alpha) {
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
  invisible(capture.output(exact_result <- Superpower::ANOVA_exact(design_result, alpha_level = alpha)))
  return(jsonlite::toJSON(round_df(exact_result$main_results)))
}


