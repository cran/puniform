### Function for creating plot when Hedges' g two-independent groups is the effect 
# size measure
draw_plot_g <- function(dat, ylim, alpha, pub_bias, prop_sig, pos_sm, pos_me, 
                        pos_la, main, cex.pch) 
{
  ### Create plot
  with(dat, plot(x = posi, y = est_cum, type = "p", pch = 16, 
                 ylim = ylim, xlim = c(0, 1), xaxt = "n", yaxt = "n", bty = "n", 
                 xlab = "", las = 1, cex = cex.pch, cex.lab = par()$cex.lab,
                 ylab = ""))
  
  ### Add title to plot
  title(main, line = 2.5)
  
  ### Add label x-axis
  mtext("Precision", side = 1, cex = par()$cex.lab, line = 3.8)
  
  ### Add label y-axis
  mtext(expression(paste("Effect size (", italic(g), ")"), sep = ""), side = 2, 
        cex = par()$cex.lab, line = par()$mgp[1])     
  
  ### Draw confidence intervals
  with(dat[nrow(dat), ], arrows(x0 = posi, y0 = lb_cum, y1 = ub_cum, code = 3, 
                                angle = 90, length = 0.1)) # First CI is black
  
  with(dat[1:(nrow(dat)-1), ], arrows(x0 = posi, y0 = lb_cum, y1 = ub_cum, code = 3, 
                                      angle = 90, length = 0.1, col = "gray")) # Other CIs gray
  
  ### Create x-axis
  axis(1, at = seq(0, 1, 0.1), cex = par()$cex.axis)
  
  ### Create y-axis
  axis(2, at = round(seq(ylim[1], ylim[2], length.out = 8), 2), las = 1)
  
  if (is.na(pub_bias))
  { ### Add points for cumulative meta-analysis based on Mill's ratios if
    # proportion statistically significant effect sizes is larger than 0.8 and 
    # pub_bias is NA
    if (prop_sig > 0.8)
    { 
      with(dat, points(x = posi, y = pub_est, cex = cex.pch, pch = 8))  
    }
  } else if (pub_bias == TRUE)
  { ### Add points for cumulative meta-analysis based on Mill's ratios if 
    # pub_bias is TRUE
    with(dat, points(x = posi, y = pub_est, cex = cex.pch, pch = 8))  
  }
  
  ### Vertical line reflecting required sample size for particular statistical power
  segments(x0 = pos_la, x1 = pos_la, y0 = par("usr")[3], 
           y1 = par("usr")[4] + strheight("%"), col = "gray", lty = 2, xpd = TRUE)
  segments(x0 = pos_me, x1 = pos_me, y0 = par("usr")[3], 
           y1 = par("usr")[4] + strheight("%"), col = "gray", lty = 2, xpd = TRUE)
  segments(x0 = pos_sm, x1 = pos_sm, y0 = par("usr")[3], 
           y1 = par("usr")[4] + strheight("%"), col = "gray", lty = 2, xpd = TRUE)
  
  ### Horizontal line reflecting estimate of meta-analysis
  abline(h = dat$est_cum[nrow(dat)], lty = 3)
  
  ### Horizontal line at no effect
  abline(h = 0)
  
  ### Letters indicating to what effect size each vertical line belongs
  text(x = pos_la, y = par("usr")[4] + strheight("%") + (par("usr")[4] + strheight("%"))*0.01, 
       label = "L", cex = par()$cex.lab*1.2, xpd = TRUE, pos = 3)
  text(x = pos_me, y = par("usr")[4] + strheight("%") + (par("usr")[4] + strheight("%"))*0.01, 
       label = "M", cex = par()$cex.lab*1.2, xpd = TRUE, pos = 3)
  text(x = pos_sm, y = par("usr")[4] + strheight("%") + (par("usr")[4] + strheight("%"))*0.01, 
       label = "S", cex = par()$cex.lab*1.2, xpd = TRUE, pos = 3)
  
}
