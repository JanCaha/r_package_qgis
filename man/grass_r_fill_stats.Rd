% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass_r_fill_stats.R
\name{grass_r_fill_stats}
\alias{grass_r_fill_stats}
\title{QGIS algorithm - r.fill.stats}
\usage{
grass_r_fill_stats(
  input = qgisprocess:::qgis_default_value(),
  .k = qgisprocess:::qgis_default_value(),
  mode = qgisprocess:::qgis_default_value(),
  .m = qgisprocess:::qgis_default_value(),
  distance = qgisprocess:::qgis_default_value(),
  minimum = qgisprocess:::qgis_default_value(),
  maximum = qgisprocess:::qgis_default_value(),
  power = qgisprocess:::qgis_default_value(),
  cells = qgisprocess:::qgis_default_value(),
  output = qgisprocess:::qgis_default_value(),
  uncertainty = qgisprocess:::qgis_default_value(),
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
\item{input}{\code{raster} - Input raster layer with data gaps to fill. Path to a raster layer.}

\item{.k}{\code{boolean} - Preserve original cell values (By default original values are smoothed). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -k.}

\item{mode}{\code{enum}  of \verb{("wmean", "mean", "median", "mode")} - Statistic for interpolated cell values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{.m}{\code{boolean} - Interpret distance as map units, not number of cells (Do not select with geodetic coordinates). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -m.}

\item{distance}{\code{number} - Distance threshold (default: in cells) for interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{minimum}{\code{number} - Minimum input data value to include in interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{maximum}{\code{number} - Maximum input data value to include in interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{power}{\code{number} - Power coefficient for IDW interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{cells}{\code{number} - Minimum number of data cells within search radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{output}{\code{rasterDestination} - Output Map. Path for new raster layer.}

\item{uncertainty}{\code{rasterDestination} - Uncertainty Map. Path for new raster layer.}

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
QGIS Algorithm provided by GRASS r.fill.stats (grass:r.fill.stats). Rapidly fills 'no data' cells (NULLs) of a raster map with interpolated values (IDW).
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Output Map
\item uncertainty - outputRaster - Uncertainty Map
}
}
}
