% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_cost.R
\name{grass7_r_cost}
\alias{grass7_r_cost}
\title{QGIS algorithm r.cost}
\usage{
grass7_r_cost(
  input = qgisprocess::qgis_default_value(),
  start_coordinates = qgisprocess::qgis_default_value(),
  stop_coordinates = qgisprocess::qgis_default_value(),
  .k = qgisprocess::qgis_default_value(),
  .n = qgisprocess::qgis_default_value(),
  start_points = qgisprocess::qgis_default_value(),
  stop_points = qgisprocess::qgis_default_value(),
  start_raster = qgisprocess::qgis_default_value(),
  max_cost = qgisprocess::qgis_default_value(),
  null_cost = qgisprocess::qgis_default_value(),
  memory = qgisprocess::qgis_default_value(),
  output = qgisprocess::qgis_default_value(),
  nearest = qgisprocess::qgis_default_value(),
  outdir = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),
  GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{input}{\code{raster} - Unit cost layer. Path to a raster layer.}

\item{start_coordinates}{\code{point} - Coordinates of starting point(s) (E,N). Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.}

\item{stop_coordinates}{\code{point} - Coordinates of stopping point(s) (E,N). Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.}

\item{.k}{\code{boolean} - Use the 'Knight's move'; slower, but more accurate. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -k.}

\item{.n}{\code{boolean} - Keep null values in output raster layer. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.}

\item{start_points}{\code{source} - Start points. Path to a vector layer.}

\item{stop_points}{\code{source} - Stop points. Path to a vector layer.}

\item{start_raster}{\code{raster} - Name of starting raster points map. Path to a raster layer.}

\item{max_cost}{\code{number} - Maximum cumulative cost. A numeric value.}

\item{null_cost}{\code{number} - Cost assigned to null cells. By default, null cells are excluded. A numeric value.}

\item{memory}{\code{number} - Maximum memory to be used in MB. A numeric value.}

\item{output}{\code{rasterDestination} - Cumulative cost. Path for new raster layer.}

\item{nearest}{\code{rasterDestination} - Cost allocation map. Path for new raster layer.}

\item{outdir}{\code{rasterDestination} - Movement directions. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{GRASS_SNAP_TOLERANCE_PARAMETER}{\code{number} - v.in.ogr snap tolerance (-1 = no snap). A numeric value.}

\item{GRASS_MIN_AREA_PARAMETER}{\code{number} - v.in.ogr min area. A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS r.cost (grass7:r.cost)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Cumulative cost
\item nearest - outputRaster - Cost allocation map
\item outdir - outputRaster - Movement directions
}
}
}
