% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_idwinterpolation.R
\name{qgis_idwinterpolation}
\alias{qgis_idwinterpolation}
\title{QGIS algorithm - IDW interpolation}
\usage{
qgis_idwinterpolation(
  INTERPOLATION_DATA = qgisprocess:::qgis_default_value(),
  DISTANCE_COEFFICIENT = qgisprocess:::qgis_default_value(),
  EXTENT = qgisprocess:::qgis_default_value(),
  PIXEL_SIZE = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INTERPOLATION_DATA}{\code{idw_interpolation_data} - Input layer(s). .}

\item{DISTANCE_COEFFICIENT}{\code{number} - Distance coefficient P. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EXTENT}{\code{extent} - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{PIXEL_SIZE}{\code{number} - Output raster size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{rasterDestination} - Interpolated. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS IDW interpolation (qgis:idwinterpolation). Generates an Inverse Distance Weighted (IDW) interpolation of a point vector layer. Generates an Inverse Distance Weighted (IDW) interpolation of a point vector layer. Sample points are weighted during interpolation such that the influence of one point relative to another declines with distance from the unknown point you want to create.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputRaster - Interpolated
}
}
}
