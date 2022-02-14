library(Superpower)
minMaxPower <- function(studyDesign, N, means, SD) { 
    design_result <- ANOVA_design(design = studyDesign, n = N,  mu = means, sd = SD, r = 0.5, plot = F)
    exact_result <- ANOVA_exact(design_result, alpha_level = 0.05))
    return (list(min(exact_result$main_results$power),max(exact_result$main_results$power)))
}
