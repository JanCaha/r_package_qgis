% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_rasterlayerhistogram.R
\name{qgis_rasterlayerhistogram}
\alias{qgis_rasterlayerhistogram}
\title{QGIS algorithm - Raster layer histogram}
\usage{
qgis_rasterlayerhistogram(
  INPUT = qgisprocess:::qgis_default_value(),
  BAND = qgisprocess:::qgis_default_value(),
  BINS = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{raster} - Input layer. Path to a raster layer.}

\item{BAND}{\code{band} - Band number. Integer value representing an existing raster band number.}

\item{BINS}{\code{number} - number of bins. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{fileDestination} - Histogram. Path for new file.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS Raster layer histogram (qgis:rasterlayerhistogram). Generates a histogram with the values of a raster layer. This algorithm generates a histogram with the values of a raster layer. The raster layer must have a single band.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputHtml - Histogram
}
}
}
