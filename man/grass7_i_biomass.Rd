% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_i_biomass.R
\name{grass7_i_biomass}
\alias{grass7_i_biomass}
\title{QGIS algorithm i.biomass}
\usage{
grass7_i_biomass(
  fpar = qgisprocess::qgis_default_value(),
  lightuse_efficiency = qgisprocess::qgis_default_value(),
  latitude = qgisprocess::qgis_default_value(),
  dayofyear = qgisprocess::qgis_default_value(),
  transmissivity_singleway = qgisprocess::qgis_default_value(),
  water_availability = qgisprocess::qgis_default_value(),
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
\item{fpar}{\code{raster} - Name of fPAR raster map. Path to a raster layer.}

\item{lightuse_efficiency}{\code{raster} - Name of light use efficiency raster map (UZB:cotton=1.9). Path to a raster layer.}

\item{latitude}{\code{raster} - Name of degree latitude raster map (dd.ddd). Path to a raster layer.}

\item{dayofyear}{\code{raster} - Name of Day of Year raster map (1-366). Path to a raster layer.}

\item{transmissivity_singleway}{\code{raster} - Name of single-way transmissivity raster map (0.0-1.0). Path to a raster layer.}

\item{water_availability}{\code{raster} - Value of water availability raster map (0.0-1.0). Path to a raster layer.}

\item{output}{\code{rasterDestination} - Biomass. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS i.biomass (grass7:i.biomass)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Biomass
}
}
}
