% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_soiltextureclassification.R
\name{saga_soiltextureclassification}
\alias{saga_soiltextureclassification}
\title{QGIS algorithm Soil texture classification}
\usage{
saga_soiltextureclassification(
  SAND = qgisprocess::qgis_default_value(),
  SILT = qgisprocess::qgis_default_value(),
  CLAY = qgisprocess::qgis_default_value(),
  TEXTURE = qgisprocess::qgis_default_value(),
  SUM = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{SAND}{\code{raster} - Sand. Path to a raster layer.}

\item{SILT}{\code{raster} - Silt. Path to a raster layer.}

\item{CLAY}{\code{raster} - Clay. Path to a raster layer.}

\item{TEXTURE}{\code{rasterDestination} - Soil Texture. Path for new raster layer.}

\item{SUM}{\code{rasterDestination} - Sum. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Soil texture classification (saga:soiltextureclassification)
}
\details{
\subsection{Outputs description}{
\itemize{
\item TEXTURE - outputRaster - Soil Texture
\item SUM - outputRaster - Sum
}
}
}
