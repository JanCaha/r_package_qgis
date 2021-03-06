% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_surf_fractal.R
\name{grass7_r_surf_fractal}
\alias{grass7_r_surf_fractal}
\title{QGIS algorithm r.surf.fractal}
\usage{
grass7_r_surf_fractal(
  dimension = qgisprocess::qgis_default_value(),
  number = qgisprocess::qgis_default_value(),
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
\item{dimension}{\code{number} - Fractal dimension of surface (2  D  3). A numeric value.}

\item{number}{\code{number} - Number of intermediate images to produce. A numeric value.}

\item{output}{\code{rasterDestination} - Fractal Surface. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS r.surf.fractal (grass7:r.surf.fractal)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Fractal Surface
}
}
}
