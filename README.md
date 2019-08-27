
<!-- README.md is generated from README.Rmd. Please edit that file -->

# puniform

[![Build
Status](https://travis-ci.org/RobbievanAert/puniform.svg?branch=master)](https://travis-ci.org/RobbievanAert/puniform)

Provides meta-analysis methods that correct for publication bias. Four
methods and a visual tool are currently included in the package. The
p-uniform method as described in [van Assen, van Aert, and Wicherts
(2015)](http://dx.doi.org/10.1037/met0000025) can be used for estimating
the average effect size, testing the null hypothesis of no effect, and
testing for publication bias using only the statistically significant
effect sizes of primary studies. The second method in the package is the
p-uniform\* method as described in [van Aert and van Assen
(2019)](https://osf.io/preprints/metaarxiv/zqjr9/). This method is an
extension of the p-uniform method that allows for estimation of the
average effect size and the between-study variance in a meta-analysis,
and uses both the statistically significant and nonsignificant effect
sizes. The third method in the package is the hybrid method as described
in [van Aert and van Assen
(2018)](https://link.springer.com/article/10.3758/s13428-017-0967-6).
The hybrid method is a meta-analysis method for combining an original
study and replication and while taking into account statistical
significance of the original study. The p-uniform and hybrid method are
based on the statistical theory that the distribution of p-values is
uniform conditional on the population effect size. The fourth method in
the package is the Snapshot Bayesian Hybrid Meta-Analysis Method as
described in [van Aert and van Assen
(2017)](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0175302).
This method computes posterior probabilities for four true effect sizes
(no, small, medium, and large) based on an original study and
replication while taking into account publication bias in the original
study. The method can also be used for computing the required sample
size of the replication akin to power analysis in null hypothesis
significance testing. The meta-plot is a visual tool for meta-analysis
that provides information on the primary studies in the meta-analysis,
the results of the meta-analysis, and characteristics of the research on
the effect under study (van Assen and others, 2019).

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
Aert](http://www.robbievanaert.com/). If you suspect a bug, please
report a report
[here](https://github.com/RobbievanAert/puniform/issues).
