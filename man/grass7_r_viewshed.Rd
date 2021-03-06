% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_viewshed.R
\name{grass7_r_viewshed}
\alias{grass7_r_viewshed}
\title{QGIS algorithm r.viewshed}
\usage{
grass7_r_viewshed(
  input = qgisprocess::qgis_default_value(),
  coordinates = qgisprocess::qgis_default_value(),
  observer_elevation = qgisprocess::qgis_default_value(),
  target_elevation = qgisprocess::qgis_default_value(),
  max_distance = qgisprocess::qgis_default_value(),
  refraction_coeff = qgisprocess::qgis_default_value(),
  memory = qgisprocess::qgis_default_value(),
  .c = qgisprocess::qgis_default_value(),
  .r = qgisprocess::qgis_default_value(),
  .b = qgisprocess::qgis_default_value(),
  .e = qgisprocess::qgis_default_value(),
  output = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{input}{\code{raster} - Elevation. Path to a raster layer.}

\item{coordinates}{\code{point} - Coordinate identifying the viewing position. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.}

\item{observer_elevation}{\code{number} - Viewing elevation above the ground. A numeric value.}

\item{target_elevation}{\code{number} - Offset for target elevation above the ground. A numeric value.}

\item{max_distance}{\code{number} - Maximum visibility radius. By default infinity (-1). A numeric value.}

\item{refraction_coeff}{\code{number} - Refraction coefficient. A numeric value.}

\item{memory}{\code{number} - Amount of memory to use in MB. A numeric value.}

\item{.c}{\code{boolean} - Consider earth curvature (current ellipsoid). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.}

\item{.r}{\code{boolean} - Consider the effect of atmospheric refraction. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.}

\item{.b}{\code{boolean} - Output format is invisible = 0, visible = 1. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -b.}

\item{.e}{\code{boolean} - Output format is invisible = NULL, else current elev - viewpoint_elev. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.}

\item{output}{\code{rasterDestination} - Intervisibility. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS r.viewshed (grass7:r.viewshed)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Intervisibility
}
}
}
