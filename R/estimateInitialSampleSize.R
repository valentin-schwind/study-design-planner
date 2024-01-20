estimateInitialSampleSize <- function(study_design,
                                 delta, 
                                 sd,  
                                 covar = 0.75,
                                 power_threshold = 0.80, 
                                 alpha = 0.05, 
                                 nsims = 100, 
                                 seed = 1234) {
    # We start from 0 power to stop if we reach the threshold
    power <- 0
    
    # We have % in Superpower
    power_threshold <- power_threshold * 100
    
    # Heuristic counter
    iterations <- 0 
    
    # Remove non-numeric characters
    numeric_string <- gsub("[^0-9*]", "", study_design)

    # Split the string at '*' and convert to numeric
    numbers <- as.numeric(strsplit(numeric_string, "\\*")[[1]])

    # Multiply the numbers from the design
    num_conditions <- prod(numbers)
    
    # Initial sample size = number of conditions
    sample_size <- num_conditions 
    
    # Interpolate the means
    means <- seq(0, delta, length.out = num_conditions)  
    
    while (power < power_threshold) {
        
        # Shuffle the means to avoid biases in the interpolation
        means <- sample(means) 
        
        # Compute study design results
        invisible(capture.output(design_result <- Superpower::ANOVA_design(design = study_design, 
                                                  n = sample_size, 
                                                  mu = means, 
                                                  sd = sd, 
                                                  r = covar,
                                                  plot = FALSE)))
        
        # Estimates power
        invisible(capture.output(power_result <- Superpower::ANOVA_power(design_result, 
                                                alpha = alpha, 
                                                nsims = nsims, 
                                                seed = seed)))
        
        # Give me the max power and proceed with the next step
        power <- max(power_result$main_results$power)
        sample_size <- sample_size + num_conditions   
        iterations <- iterations + 1
    }
    return (sample_size - num_conditions)
}