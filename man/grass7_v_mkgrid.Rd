% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_v_mkgrid.R
\name{grass7_v_mkgrid}
\alias{grass7_v_mkgrid}
\title{QGIS algorithm v.mkgrid}
\usage{
grass7_v_mkgrid(
  grid = qgisprocess::qgis_default_value(),
  position = qgisprocess::qgis_default_value(),
  coordinates = qgisprocess::qgis_default_value(),
  box = qgisprocess::qgis_default_value(),
  angle = qgisprocess::qgis_default_value(),
  breaks = qgisprocess::qgis_default_value(),
  .h = qgisprocess::qgis_default_value(),
  .p = qgisprocess::qgis_default_value(),
  map = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{grid}{\code{string} - Number of rows and columns in grid. String value.}

\item{position}{\code{enum}  of \code{("coor")} - Where to place the grid. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{coordinates}{\code{point} - Lower left easting and northing coordinates of map. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.}

\item{box}{\code{string} - Width and height of boxes in grid. String value.}

\item{angle}{\code{number} - Angle of rotation (in degrees counter-clockwise). A numeric value.}

\item{breaks}{\code{number} - Number of vertex points per grid cell. A numeric value.}

\item{.h}{\code{boolean} - Create hexagons (default: rectangles). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -h.}

\item{.p}{\code{boolean} - Create grid of points instead of areas and centroids. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -p.}

\item{map}{\code{vectorDestination} - Grid. Path for new vector layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_OUTPUT_TYPE_PARAMETER}{\code{enum}  of \verb{("auto", "point", "line", "area")} - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{GRASS_VECTOR_DSCO}{\code{string} - v.out.ogr output data source options (dsco). String value.}

\item{GRASS_VECTOR_LCO}{\code{string} - v.out.ogr output layer options (lco). String value.}

\item{GRASS_VECTOR_EXPORT_NOCAT}{\code{boolean} - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS v.mkgrid (grass7:v.mkgrid)
}
\details{
\subsection{Outputs description}{
\itemize{
\item map - outputVector - Grid
}
}
}
