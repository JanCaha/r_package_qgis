% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_flow.R
\name{grass7_r_flow}
\alias{grass7_r_flow}
\title{QGIS algorithm r.flow}
\usage{
grass7_r_flow(
  elevation = qgisprocess::qgis_default_value(),
  aspect = qgisprocess::qgis_default_value(),
  barrier = qgisprocess::qgis_default_value(),
  skip = qgisprocess::qgis_default_value(),
  bound = qgisprocess::qgis_default_value(),
  .u = qgisprocess::qgis_default_value(),
  .arg_3 = qgisprocess::qgis_default_value(),
  .m = qgisprocess::qgis_default_value(),
  flowline = qgisprocess::qgis_default_value(),
  flowlength = qgisprocess::qgis_default_value(),
  flowaccumulation = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),
  GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{elevation}{\code{raster} - Elevation. Path to a raster layer.}

\item{aspect}{\code{raster} - Aspect. Path to a raster layer.}

\item{barrier}{\code{raster} - Barrier. Path to a raster layer.}

\item{skip}{\code{number} - Number of cells between flowlines. A numeric value.}

\item{bound}{\code{number} - Maximum number of segments per flowline. A numeric value.}

\item{.u}{\code{boolean} - Compute upslope flowlines instead of default downhill flowlines. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -u.}

\item{.arg_3}{\code{boolean} - 3-D lengths instead of 2-D. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -3.}

\item{.m}{\code{boolean} - Use less memory, at a performance penalty. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -m.}

\item{flowline}{\code{vectorDestination} - Flow line. Path for new vector layer.}

\item{flowlength}{\code{rasterDestination} - Flow path length. Path for new raster layer.}

\item{flowaccumulation}{\code{rasterDestination} - Flow accumulation. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{GRASS_OUTPUT_TYPE_PARAMETER}{\code{enum}  of \verb{("auto", "point", "line", "area")} - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{GRASS_VECTOR_DSCO}{\code{string} - v.out.ogr output data source options (dsco). String value.}

\item{GRASS_VECTOR_LCO}{\code{string} - v.out.ogr output layer options (lco). String value.}

\item{GRASS_VECTOR_EXPORT_NOCAT}{\code{boolean} - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS r.flow (grass7:r.flow)
}
\details{
\subsection{Outputs description}{
\itemize{
\item flowline - outputVector - Flow line
\item flowlength - outputRaster - Flow path length
\item flowaccumulation - outputRaster - Flow accumulation
}
}
}
