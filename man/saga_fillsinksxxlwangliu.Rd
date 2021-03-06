% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_fillsinksxxlwangliu.R
\name{saga_fillsinksxxlwangliu}
\alias{saga_fillsinksxxlwangliu}
\title{QGIS algorithm Fill sinks xxl (wang & liu)}
\usage{
saga_fillsinksxxlwangliu(
  ELEV = qgisprocess::qgis_default_value(),
  MINSLOPE = qgisprocess::qgis_default_value(),
  FILLED = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{ELEV}{\code{raster} - DEM. Path to a raster layer.}

\item{MINSLOPE}{\code{number} - Minimum Slope (Degree). A numeric value.}

\item{FILLED}{\code{rasterDestination} - Filled DEM. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Fill sinks xxl (wang & liu) (saga:fillsinksxxlwangliu)
}
\details{
\subsection{Outputs description}{
\itemize{
\item FILLED - outputRaster - Filled DEM
}
}
}
