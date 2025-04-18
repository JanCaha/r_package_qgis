% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass_r_param_scale.R
\name{grass_r_param_scale}
\alias{grass_r_param_scale}
\title{QGIS algorithm - r.param.scale}
\usage{
grass_r_param_scale(
  input = qgisprocess:::qgis_default_value(),
  slope_tolerance = qgisprocess:::qgis_default_value(),
  curvature_tolerance = qgisprocess:::qgis_default_value(),
  size = qgisprocess:::qgis_default_value(),
  method = qgisprocess:::qgis_default_value(),
  exponent = qgisprocess:::qgis_default_value(),
  zscale = qgisprocess:::qgis_default_value(),
  .c = qgisprocess:::qgis_default_value(),
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
\item{input}{\code{raster} - Name of input raster map. Path to a raster layer.}

\item{slope_tolerance}{\code{number} - Slope tolerance that defines a 'flat' surface (degrees). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{curvature_tolerance}{\code{number} - Curvature tolerance that defines 'planar' surface. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{size}{\code{number} - Size of processing window (odd number only, max: 499). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{method}{\code{enum}  of \verb{("elev", "slope", "aspect", "profc", "planc", "longc", "crosc", "minic", "maxic", "feature")} - Morphometric parameter in 'size' window to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{exponent}{\code{number} - Exponent for distance weighting (0.0-4.0). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{zscale}{\code{number} - Vertical scaling factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{.c}{\code{boolean} - Constrain model through central window cell. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -c.}

\item{output}{\code{rasterDestination} - Morphometric parameter. Path for new raster layer.}

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
QGIS Algorithm provided by GRASS r.param.scale (grass:r.param.scale). Extracts terrain parameters from a DEM.
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Morphometric parameter
}
}
}
