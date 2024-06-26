% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_diurnalanisotropicheat.R
\name{sagang_diurnalanisotropicheat}
\alias{sagang_diurnalanisotropicheat}
\title{QGIS algorithm - Diurnal anisotropic heat}
\usage{
sagang_diurnalanisotropicheat(
  DEM = qgisprocess:::qgis_default_value(),
  DAH = qgisprocess:::qgis_default_value(),
  ALPHA_MAX = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{DAH}{\code{rasterDestination} - Diurnal Anisotropic Heating. Path for new raster layer.}

\item{ALPHA_MAX}{\code{number} - Alpha Max (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Diurnal anisotropic heat (sagang:diurnalanisotropicheat). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DAH: Diurnal Anisotropic Heating 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ALPHA_MAX: Alpha Max (Degree) 	Default value:	202.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item DAH - outputRaster - Diurnal Anisotropic Heating
}
}
}
