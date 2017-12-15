
<!-- README.md is generated from README.Rmd. Please edit that file -->
jsPhyloSVG htmlwidget
=====================

The [jsPhyloSVG](http://jsphylosvg.com) javascript library provides a neat visualization tool for phylogenetic trees. This R package, which has the same name, is a wrapper that builds an [htmlwidget](http://www.htmlwidgets.org/) that allows its use in R, including RMarkdown and Shiny. This is still work in progress.

Installation
------------

You can install jsPhyloSVG from github with:

``` r
# install.packages("devtools")
devtools::install_github("USCBiostats/jsPhyloSVG")
```

Example
-------

In the following, we present an example of usage of the widget. First, using the [ape](https://cran.r-project.org/package=ape) package, we create a random phylogenetic tree.

``` r
library(ape)
library(jsPhyloSVG)
```

``` r
x <- rtree(10)
```

Using the `plot.ape` method, we can get a nice tree drawn with ape:

``` r
plot(x)
```

<img src="man/figures/README-ape-plot-1.png" width="70%" />

Using the `jsPhyloSVG` function, we can visualize the same tree but using the Javascript library of the same name, [jsPhyloSVG](http://jsphylosvg.com):

``` r
jsPhyloSVG(write.tree(x), width = 500)
```

<!--html_preserve-->

<script type="application/json" data-for="htmlwidget-fa82ef2c1df40f596eb4">{"x":{"tree":"((((t5:0.711618749,t2:0.7536709285):0.3014811072,t9:0.006679591257):0.7295579859,(((t3:0.04991230788,t1:0.7695334381):0.1482843969,t4:0.5517065248):0.1085545681,(t7:0.4611449852,(t10:0.9377868853,t8:0.1973150689):0.6746723582):0.4731857351):0.3594574758):0.1177950753,t6:0.3163426858);","layout":"circular"},"evals":[],"jsHooks":[]}</script>
<!--/html_preserve-->
