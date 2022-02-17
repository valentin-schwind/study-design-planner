sampleSize <- function(cohensf, groups, powerlevel, alpha) {
  return(pwr.anova.test(f=cohensf,k=groups,power=powerlevel,sig.level=alpha)$n)
}
