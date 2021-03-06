% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_rasterlayerhistogram.R
\name{qgis_rasterlayerhistogram}
\alias{qgis_rasterlayerhistogram}
\title{QGIS algorithm Raster layer histogram}
\usage{
qgis_rasterlayerhistogram(
  INPUT = qgisprocess::qgis_default_value(),
  BAND = qgisprocess::qgis_default_value(),
  BINS = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{raster} - Input layer. Path to a raster layer.}

\item{BAND}{\code{band} - Band number. Integer value representing an existing raster band number.}

\item{BINS}{\code{number} - number of bins. A numeric value.}

\item{OUTPUT}{\code{fileDestination} - Histogram. Path for new file.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS Raster layer histogram (qgis:rasterlayerhistogram)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputHtml - Histogram
}
}
}
