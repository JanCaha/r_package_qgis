% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_rasterdivision.R
\name{sagang_rasterdivision}
\alias{sagang_rasterdivision}
\title{QGIS algorithm - Raster division}
\usage{
sagang_rasterdivision(
  A = qgisprocess:::qgis_default_value(),
  B = qgisprocess:::qgis_default_value(),
  C = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{A}{\code{raster} - Dividend. Path to a raster layer.}

\item{B}{\code{raster} - Divisor. Path to a raster layer.}

\item{C}{\code{rasterDestination} - Quotient. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Raster division (sagang:rasterdivision). ---------------- Arguments ----------------  A: Dividend 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer B: Divisor 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer C: Quotient 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
}
\details{
\subsection{Outputs description}{
\itemize{
\item C - outputRaster - Quotient
}
}
}
