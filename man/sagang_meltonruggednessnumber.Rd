% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_meltonruggednessnumber.R
\name{sagang_meltonruggednessnumber}
\alias{sagang_meltonruggednessnumber}
\title{QGIS algorithm - Melton ruggedness number}
\usage{
sagang_meltonruggednessnumber(
  DEM = qgisprocess:::qgis_default_value(),
  AREA = qgisprocess:::qgis_default_value(),
  ZMAX = qgisprocess:::qgis_default_value(),
  MRN = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{AREA}{\code{rasterDestination} - Catchment Area. Path for new raster layer.}

\item{ZMAX}{\code{rasterDestination} - Maximum Height. Path for new raster layer.}

\item{MRN}{\code{rasterDestination} - Melton Ruggedness Number. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Melton ruggedness number (sagang:meltonruggednessnumber). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer AREA: Catchment Area 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ZMAX: Maximum Height 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MRN: Melton Ruggedness Number 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
}
\details{
\subsection{Outputs description}{
\itemize{
\item AREA - outputRaster - Catchment Area
\item MRN - outputRaster - Melton Ruggedness Number
\item ZMAX - outputRaster - Maximum Height
}
}
}
