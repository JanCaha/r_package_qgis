% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass_r_watershed.R
\name{grass_r_watershed}
\alias{grass_r_watershed}
\title{QGIS algorithm - r.watershed}
\usage{
grass_r_watershed(
  elevation = qgisprocess:::qgis_default_value(),
  depression = qgisprocess:::qgis_default_value(),
  flow = qgisprocess:::qgis_default_value(),
  disturbed_land = qgisprocess:::qgis_default_value(),
  blocking = qgisprocess:::qgis_default_value(),
  threshold = qgisprocess:::qgis_default_value(),
  max_slope_length = qgisprocess:::qgis_default_value(),
  convergence = qgisprocess:::qgis_default_value(),
  memory = qgisprocess:::qgis_default_value(),
  .s = qgisprocess:::qgis_default_value(),
  .m = qgisprocess:::qgis_default_value(),
  .arg_4 = qgisprocess:::qgis_default_value(),
  .a = qgisprocess:::qgis_default_value(),
  .b = qgisprocess:::qgis_default_value(),
  accumulation = qgisprocess:::qgis_default_value(),
  drainage = qgisprocess:::qgis_default_value(),
  basin = qgisprocess:::qgis_default_value(),
  stream = qgisprocess:::qgis_default_value(),
  half_basin = qgisprocess:::qgis_default_value(),
  length_slope = qgisprocess:::qgis_default_value(),
  slope_steepness = qgisprocess:::qgis_default_value(),
  tci = qgisprocess:::qgis_default_value(),
  spi = qgisprocess:::qgis_default_value(),
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
\item{elevation}{\code{raster} - Elevation. Path to a raster layer.}

\item{depression}{\code{raster} - Locations of real depressions. Path to a raster layer.}

\item{flow}{\code{raster} - Amount of overland flow per cell. Path to a raster layer.}

\item{disturbed_land}{\code{raster} - Percent of disturbed land, for USLE. Path to a raster layer.}

\item{blocking}{\code{raster} - Terrain blocking overland surface flow, for USLE. Path to a raster layer.}

\item{threshold}{\code{number} - Minimum size of exterior watershed basin. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{max_slope_length}{\code{number} - Maximum length of surface flow, for USLE. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{convergence}{\code{number} - Convergence factor for MFD (1-10). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{memory}{\code{number} - Maximum memory to be used with -m flag (in MB). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{.s}{\code{boolean} - Enable Single Flow Direction (D8) flow (default is Multiple Flow Direction). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -s.}

\item{.m}{\code{boolean} - Enable disk swap memory option (-m): Operation is slow. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -m.}

\item{.arg_4}{\code{boolean} - Allow only horizontal and vertical flow of water. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -4.}

\item{.a}{\code{boolean} - Use positive flow accumulation even for likely underestimates. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -a.}

\item{.b}{\code{boolean} - Beautify flat areas. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -b.}

\item{accumulation}{\code{rasterDestination} - Number of cells that drain through each cell. Path for new raster layer.}

\item{drainage}{\code{rasterDestination} - Drainage direction. Path for new raster layer.}

\item{basin}{\code{rasterDestination} - Unique label for each watershed basin. Path for new raster layer.}

\item{stream}{\code{rasterDestination} - Stream segments. Path for new raster layer.}

\item{half_basin}{\code{rasterDestination} - Half-basins. Path for new raster layer.}

\item{length_slope}{\code{rasterDestination} - Slope length and steepness (LS) factor for USLE. Path for new raster layer.}

\item{slope_steepness}{\code{rasterDestination} - Slope steepness (S) factor for USLE. Path for new raster layer.}

\item{tci}{\code{rasterDestination} - Topographic index ln(a \code{/} tan(b)). Path for new raster layer.}

\item{spi}{\code{rasterDestination} - Stream power index a * tan(b). Path for new raster layer.}

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
QGIS Algorithm provided by GRASS r.watershed (grass:r.watershed). Watershed basin analysis program.
}
\details{
\subsection{Outputs description}{
\itemize{
\item accumulation - outputRaster - Number of cells that drain through each cell
\item basin - outputRaster - Unique label for each watershed basin
\item drainage - outputRaster - Drainage direction
\item half_basin - outputRaster - Half-basins
\item length_slope - outputRaster - Slope length and steepness (LS) factor for USLE
\item slope_steepness - outputRaster - Slope steepness (S) factor for USLE
\item spi - outputRaster - Stream power index a * tan(b)
\item stream - outputRaster - Stream segments
\item tci - outputRaster - Topographic index ln(a \code{/} tan(b))
}
}
}
