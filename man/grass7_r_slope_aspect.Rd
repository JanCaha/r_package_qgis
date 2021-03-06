% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_slope_aspect.R
\name{grass7_r_slope_aspect}
\alias{grass7_r_slope_aspect}
\title{QGIS algorithm r.slope.aspect}
\usage{
grass7_r_slope_aspect(
  elevation = qgisprocess::qgis_default_value(),
  format = qgisprocess::qgis_default_value(),
  precision = qgisprocess::qgis_default_value(),
  .a = qgisprocess::qgis_default_value(),
  .e = qgisprocess::qgis_default_value(),
  .n = qgisprocess::qgis_default_value(),
  zscale = qgisprocess::qgis_default_value(),
  min_slope = qgisprocess::qgis_default_value(),
  slope = qgisprocess::qgis_default_value(),
  aspect = qgisprocess::qgis_default_value(),
  pcurvature = qgisprocess::qgis_default_value(),
  tcurvature = qgisprocess::qgis_default_value(),
  dx = qgisprocess::qgis_default_value(),
  dy = qgisprocess::qgis_default_value(),
  dxx = qgisprocess::qgis_default_value(),
  dyy = qgisprocess::qgis_default_value(),
  dxy = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{elevation}{\code{raster} - Elevation. Path to a raster layer.}

\item{format}{\code{enum}  of \verb{("degrees", "percent")} - Format for reporting the slope. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{precision}{\code{enum}  of \verb{("FCELL", "CELL", "DCELL")} - Type of output aspect and slope layer. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{.a}{\code{boolean} - Do not align the current region to the elevation layer. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.}

\item{.e}{\code{boolean} - Compute output at edges and near NULL values. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.}

\item{.n}{\code{boolean} - Create aspect as degrees clockwise from North (azimuth), with flat = -9999. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.}

\item{zscale}{\code{number} - Multiplicative factor to convert elevation units to meters. A numeric value.}

\item{min_slope}{\code{number} - Minimum slope val. (in percent) for which aspect is computed. A numeric value.}

\item{slope}{\code{rasterDestination} - Slope. Path for new raster layer.}

\item{aspect}{\code{rasterDestination} - Aspect. Path for new raster layer.}

\item{pcurvature}{\code{rasterDestination} - Profile curvature. Path for new raster layer.}

\item{tcurvature}{\code{rasterDestination} - Tangential curvature. Path for new raster layer.}

\item{dx}{\code{rasterDestination} - First order partial derivative dx (E-W slope). Path for new raster layer.}

\item{dy}{\code{rasterDestination} - First order partial derivative dy (N-S slope). Path for new raster layer.}

\item{dxx}{\code{rasterDestination} - Second order partial derivative dxx. Path for new raster layer.}

\item{dyy}{\code{rasterDestination} - Second order partial derivative dyy. Path for new raster layer.}

\item{dxy}{\code{rasterDestination} - Second order partial derivative dxy. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS r.slope.aspect (grass7:r.slope.aspect)
}
\details{
\subsection{Outputs description}{
\itemize{
\item slope - outputRaster - Slope
\item aspect - outputRaster - Aspect
\item pcurvature - outputRaster - Profile curvature
\item tcurvature - outputRaster - Tangential curvature
\item dx - outputRaster - First order partial derivative dx
\item dy - outputRaster - First order partial derivative dy
\item dxx - outputRaster - Second order partial derivative dxx
\item dyy - outputRaster - Second order partial derivative dyy
\item dxy - outputRaster - Second order partial derivative dxy
}
}
}
