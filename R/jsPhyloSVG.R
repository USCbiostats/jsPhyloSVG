#' @import ape
NULL

#' An htmlwidget for jsPhyloSVG
#'
#' Creates an htmlwidget for the jsPhyloSVG javascript library
#'
#' @param tree Character scalar. A newick tree (for now).
#' @param width,height Numeric. With and height of the widget.
#' @param elementId See [htmlwidgets::createWidget]
#' @param circular Logical scalar. When `TRUE` sets the layout to be cicular.
#'
#' @import htmlwidgets
#' @references Smits SA, Ouverney CC, 2010 jsPhyloSVG: A Javascript Library
#' for Visualizing Interactive and Vector-Based Phylogenetic Trees on the Web.
#' PLoS ONE 5(8): e12267. \doi{10.1371/journal.pone.0012267}
#'
#' @export
jsPhyloSVG <- function(
  tree,
  width = NULL,
  height = NULL,
  elementId = NULL,
  circular = TRUE
  ) {

  # forward options using x
  x = list(
    tree   = tree,
    layout = ifelse(circular, 'circular', 'rectangular')
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'jsPhyloSVG',
    x,
    width = width,
    height = height,
    package = 'jsPhyloSVG',
    elementId = elementId
  )
}

#' Shiny bindings for jsPhyloSVG
#'
#' Output and render functions for using jsPhyloSVG within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a jsPhyloSVG
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name jsPhyloSVG-shiny
#'
#' @export
jsPhyloSVGOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'jsPhyloSVG', width, height, package = 'jsPhyloSVG')
}

#' @rdname jsPhyloSVG-shiny
#' @export
renderJsPhyloSVG <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, jsPhyloSVGOutput, env, quoted = TRUE)
}
