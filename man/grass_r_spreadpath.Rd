% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass_r_spreadpath.R
\name{grass_r_spreadpath}
\alias{grass_r_spreadpath}
\title{QGIS algorithm - r.spreadpath}
\usage{
grass_r_spreadpath(
  x_input = qgisprocess:::qgis_default_value(),
  y_input = qgisprocess:::qgis_default_value(),
  coordinates = qgisprocess:::qgis_default_value(),
  output = qgisprocess:::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),
  GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(),
  GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{x_input}{\code{raster} - x_input. Path to a raster layer.}

\item{y_input}{\code{raster} - y_input. Path to a raster layer.}

\item{coordinates}{\code{point} - coordinate. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.}

\item{output}{\code{rasterDestination} - Backward least cost. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS r.spreadpath (grass:r.spreadpath). Recursively traces the least cost path backwards to cells from which the cumulative cost was determined.
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Backward least cost
}
}
}
