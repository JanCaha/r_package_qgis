% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_breachdepressions.R
\name{sagang_breachdepressions}
\alias{sagang_breachdepressions}
\title{QGIS algorithm - Breach depressions}
\usage{
sagang_breachdepressions(
  DEM = qgisprocess:::qgis_default_value(),
  NOSINKS = qgisprocess:::qgis_default_value(),
  MAX_LENGTH = qgisprocess:::qgis_default_value(),
  MAX_ZDEC = qgisprocess:::qgis_default_value(),
  MIN_ZDROP = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{NOSINKS}{\code{rasterDestination} - Preprocessed. Path for new raster layer.}

\item{MAX_LENGTH}{\code{number} - Maximum Breach Channel Length. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{MAX_ZDEC}{\code{number} - Maximum Elevation Decrement. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{MIN_ZDROP}{\code{number} - Minimum Elevation Drop. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Breach depressions (sagang:breachdepressions). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NOSINKS: Preprocessed 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAX_LENGTH: Maximum Breach Channel Length 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAX_ZDEC: Maximum Elevation Decrement 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MIN_ZDROP: Minimum Elevation Drop 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item NOSINKS - outputRaster - Preprocessed
}
}
}
