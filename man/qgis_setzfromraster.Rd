% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_setzfromraster.R
\name{qgis_setzfromraster}
\alias{qgis_setzfromraster}
\title{QGIS algorithm - Drape (set Z value from raster)}
\usage{
qgis_setzfromraster(
  INPUT = qgisprocess:::qgis_default_value(),
  RASTER = qgisprocess:::qgis_default_value(),
  BAND = qgisprocess:::qgis_default_value(),
  NODATA = qgisprocess:::qgis_default_value(),
  SCALE = qgisprocess:::qgis_default_value(),
  OFFSET = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{RASTER}{\code{raster} - Raster layer. Path to a raster layer.}

\item{BAND}{\code{band} - Band number. Integer value representing an existing raster band number.}

\item{NODATA}{\code{number} - Value for NoData or non-intersecting vertices. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{SCALE}{\code{number} - Scale factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OFFSET}{\code{number} - Offset. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Draped. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Drape (set Z value from raster) (native:setzfromraster). Sets the z value for vertices to values sampled from a raster layer. This algorithm sets the z value of every vertex in the feature geometry to a value sampled from a band within a raster layer.  The raster values can optionally be scaled by a preset amount and an offset can be algebraically added.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Draped
}
}
}
