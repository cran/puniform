### Function to test null hypothesis of no effect
testeffect_nsig <- function(yi, vi, est, tau.est, ycv, method)
{
  
  if (method == "ML")
  {
    ### Conduct likelihood-ratio test
    L.0 <- -2*(ml_est(0, tau.est, yi, vi, ycv)-ml_est(est, tau.est, yi, vi, ycv))
    pval.0 <- pchisq(L.0, df = 1, lower.tail = FALSE)
  } else if (method == "P" | method == "LNP")
  {
    L.0 <- pval.0 <- NA 
  }
  
  return(data.frame(L.0 = L.0, pval.0 = pval.0))
}