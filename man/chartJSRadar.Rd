% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chartJSRadar.R
\name{chartJSRadar}
\alias{chartJSRadar}
\title{Make a ChartJS Radar Plot}
\usage{
chartJSRadar(scores, labs, width = NULL, height = NULL, maxScale = NULL,
  scaleStepWidth = NULL, scaleStartValue = 0, responsive = TRUE,
  labelSize = 18, addDots = TRUE, colMatrix = NULL, polyAlpha = 0.2,
  lineAlpha = 0.8, showToolTipLabel = FALSE, ...)
}
\arguments{
\item{scores}{Data frame or named list of scores for each axis. 
If \code{labs} is not specified then labels are taken from the first column (or element).}

\item{labs}{Labels for each axis. If left unspecified labels are taken from 
the scores data set. If set to NA then labels are left blank.}

\item{width}{Width of output plot}

\item{height}{Height of output plot}

\item{maxScale}{Max value on each axis}

\item{scaleStepWidth}{Spacing between rings on radar}

\item{scaleStartValue}{Value at the centre of the radar}

\item{responsive}{Logical. whether or not the chart should be responsive and resize when the browser does}

\item{labelSize}{Numeric. Point label font size in pixels}

\item{addDots}{Logical. Whether to show a dot for each point}

\item{colMatrix}{Numeric matrix of rgb colour values. If \code{NULL} defaults are used}

\item{polyAlpha}{Alpha value for the fill of polygons}

\item{lineAlpha}{Alpha value for the outlines}

\item{showToolTipLabel}{Logical. If \code{TRUE} then data set labels are shown in the tooltip hover over}

\item{...}{Extra options passed straight to chart.js. Names must match existing options
\url{http://www.chartjs.org/docs/#getting-started-global-chart-configuration}}
}
\description{
R bindings to the radar plot in the chartJS library
}
\examples{
# Using the data frame interface
chartJSRadar(scores=skills)

# Or using a list interface
labs <- c("Communicator", "Data Wangler", "Programmer", "Technologist",  "Modeller", "Visualizer")

scores <- list("Rich" = c(9, 7, 4, 5, 3, 7),
 "Andy" = c(7, 6, 6, 2, 6, 9),
 "Aimee" = c(6, 5, 8, 4, 7, 6))

# Default settings
chartJSRadar(scores=scores, labs=labs)

# Fix the max score
chartJSRadar(scores=scores, labs=labs, maxScale=10)

# Fix max and spacing
chartJSRadar(scores=scores, labs=labs, maxScale=12, scaleStepWidth = 2)

# Add pass through settings for extra options
chartJSRadar(scores=scores, labs=labs, maxScale =10, scaleLineWidth=5)

}

