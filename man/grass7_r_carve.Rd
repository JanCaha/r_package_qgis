% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_carve.R
\name{grass7_r_carve}
\alias{grass7_r_carve}
\title{QGIS algorithm r.carve}
\usage{
grass7_r_carve(
  raster = qgisprocess::qgis_default_value(),
  vector = qgisprocess::qgis_default_value(),
  width = qgisprocess::qgis_default_value(),
  depth = qgisprocess::qgis_default_value(),
  .n = qgisprocess::qgis_default_value(),
  output = qgisprocess::qgis_default_value(),
  points = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),
  GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{raster}{\code{raster} - Elevation. Path to a raster layer.}

\item{vector}{\code{source} - Vector layer containing stream(s). Path to a vector layer.}

\item{width}{\code{number} - Stream width (in meters). Default is raster cell width. A numeric value.}

\item{depth}{\code{number} - Additional stream depth (in meters). A numeric value.}

\item{.n}{\code{boolean} - No flat areas allowed in flow direction. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.}

\item{output}{\code{rasterDestination} - Modified elevation. Path for new raster layer.}

\item{points}{\code{vectorDestination} - Adjusted stream points. Path for new vector layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{GRASS_SNAP_TOLERANCE_PARAMETER}{\code{number} - v.in.ogr snap tolerance (-1 = no snap). A numeric value.}

\item{GRASS_MIN_AREA_PARAMETER}{\code{number} - v.in.ogr min area. A numeric value.}

\item{GRASS_OUTPUT_TYPE_PARAMETER}{\code{enum}  of \verb{("auto", "point", "line", "area")} - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{GRASS_VECTOR_DSCO}{\code{string} - v.out.ogr output data source options (dsco). String value.}

\item{GRASS_VECTOR_LCO}{\code{string} - v.out.ogr output layer options (lco). String value.}

\item{GRASS_VECTOR_EXPORT_NOCAT}{\code{boolean} - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS r.carve (grass7:r.carve)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Modified elevation
\item points - outputVector - Adjusted stream points
}
}
}
