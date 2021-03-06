% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_i_his_rgb.R
\name{grass7_i_his_rgb}
\alias{grass7_i_his_rgb}
\title{QGIS algorithm i.his.rgb}
\usage{
grass7_i_his_rgb(
  hue = qgisprocess::qgis_default_value(),
  intensity = qgisprocess::qgis_default_value(),
  saturation = qgisprocess::qgis_default_value(),
  red = qgisprocess::qgis_default_value(),
  green = qgisprocess::qgis_default_value(),
  blue = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{hue}{\code{raster} - Name of input raster map (hue). Path to a raster layer.}

\item{intensity}{\code{raster} - Name of input raster map (intensity). Path to a raster layer.}

\item{saturation}{\code{raster} - Name of input raster map (saturation). Path to a raster layer.}

\item{red}{\code{rasterDestination} - Red. Path for new raster layer.}

\item{green}{\code{rasterDestination} - Green. Path for new raster layer.}

\item{blue}{\code{rasterDestination} - Blue. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS i.his.rgb (grass7:i.his.rgb)
}
\details{
\subsection{Outputs description}{
\itemize{
\item red - outputRaster - Red
\item green - outputRaster - Green
\item blue - outputRaster - Blue
}
}
}
