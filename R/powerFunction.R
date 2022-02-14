powerFunction <- function(studyDesign, N, means, SD) {

  if (!requireNamespace("Superpower", quietly = TRUE)) {
    stop(
      "Package \"Superpower\" must be installed to use this function.",
      call. = FALSE
    )
  }

  design_result <- Superpower::ANOVA_design(design = studyDesign, n = N,  mu = means, sd = SD, r = 0.5, plot = F)

  exact_result <- Superpower::ANOVA_exact(design_result, alpha_level = 0.05)

  return (list(min(exact_result$main_results$power),max(exact_result$main_results$power)))
}
