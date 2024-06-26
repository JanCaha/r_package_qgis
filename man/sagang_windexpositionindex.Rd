% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_windexpositionindex.R
\name{sagang_windexpositionindex}
\alias{sagang_windexpositionindex}
\title{QGIS algorithm - Wind exposition index}
\usage{
sagang_windexpositionindex(
  DEM = qgisprocess:::qgis_default_value(),
  EXPOSITION = qgisprocess:::qgis_default_value(),
  MAXDIST = qgisprocess:::qgis_default_value(),
  STEP = qgisprocess:::qgis_default_value(),
  OLDVER = qgisprocess:::qgis_default_value(),
  ACCEL = qgisprocess:::qgis_default_value(),
  PYRAMIDS = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{EXPOSITION}{\code{rasterDestination} - Wind Exposition. Path for new raster layer.}

\item{MAXDIST}{\code{number} - Search Distance (km). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{STEP}{\code{number} - Angular Step Size (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OLDVER}{\code{boolean} - Old Version. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{ACCEL}{\code{number} - Acceleration. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{PYRAMIDS}{\code{boolean} - Elevation Averaging. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Wind exposition index (sagang:windexpositionindex). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer EXPOSITION: Wind Exposition 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAXDIST: Search Distance (km) 	Default value:	300 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STEP: Angular Step Size (Degree) 	Default value:	15 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OLDVER: Old Version 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ACCEL: Acceleration 	Default value:	1.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PYRAMIDS: Elevation Averaging 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item EXPOSITION - outputRaster - Wind Exposition
}
}
}
