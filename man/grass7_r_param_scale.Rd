% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_param_scale.R
\name{grass7_r_param_scale}
\alias{grass7_r_param_scale}
\title{QGIS algorithm r.param.scale}
\usage{
grass7_r_param_scale(
  input = qgisprocess::qgis_default_value(),
  slope_tolerance = qgisprocess::qgis_default_value(),
  curvature_tolerance = qgisprocess::qgis_default_value(),
  size = qgisprocess::qgis_default_value(),
  method = qgisprocess::qgis_default_value(),
  exponent = qgisprocess::qgis_default_value(),
  zscale = qgisprocess::qgis_default_value(),
  .c = qgisprocess::qgis_default_value(),
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
\item{input}{\code{raster} - Name of input raster map. Path to a raster layer.}

\item{slope_tolerance}{\code{number} - Slope tolerance that defines a 'flat' surface (degrees). A numeric value.}

\item{curvature_tolerance}{\code{number} - Curvature tolerance that defines 'planar' surface. A numeric value.}

\item{size}{\code{number} - Size of processing window (odd number only, max: 69). A numeric value.}

\item{method}{\code{enum}  of \verb{("elev", "slope", "aspect", "profc", "planc", "longc", "crosc", "minic", "maxic", "feature")} - Morphometric parameter in 'size' window to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{exponent}{\code{number} - Exponent for distance weighting (0.0-4.0). A numeric value.}

\item{zscale}{\code{number} - Vertical scaling factor. A numeric value.}

\item{.c}{\code{boolean} - Constrain model through central window cell. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.}

\item{output}{\code{rasterDestination} - Morphometric parameter. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS r.param.scale (grass7:r.param.scale)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Morphometric parameter
}
}
}
