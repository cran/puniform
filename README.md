
<!-- README.md is generated from README.Rmd. Please edit that file -->

# puniform

The puniform package provides meta-analysis methods that correct for
publication bias. Four methods are currently included in the package.
The p-uniform method can be used for estimating the average effect size,
testing the null hypothesis of no effect, and testing for publication
bias using only the statistically significant effect sizes of primary
studies. The second method in the package is the p-uniform\* method.
This method is an extension of the p-uniform method that allows for
estimation of the average effect size and the between-study variance in
a meta-analysis, and uses both the statistically significant and
nonsignificant effect sizes. The third method in the package is the
hybrid method. The hybrid method is a meta-analysis method for combining
an original study and replication and while taking into account
statistical significance of the original study. The p-uniform and hybrid
method are based on the statistical theory that the distribution of
p-values is uniform conditional on the population effect size. The
fourth method in the package is the Snapshot Bayesian Hybrid
Meta-Analysis Method. This method computes posterior probabilities for
four true effect sizes (no, small, medium, and large) based on an
original study and replication while taking into account publication
bias in the original study. The method can also be used for computing
the required sample size of the replication akin to power analysis in
null hypothesis significance testing.

## Installation

The latest release can be installed directly in R with:

``` r
install.packages("puniform")
```

You can install the development version of the puniform package from
GitHub with:

``` r
install.packages("devtools")
devtools::install_github("RobbievanAert/puniform")
```

## Additional information about the package

The puniform package was written by [Robbie C.M. van
Aert](www.robbievanaert.com). If you suspect a bug, please report a
report [here](https://github.com/RobbievanAert/puniform/issues).
