% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_fastrepresentativeness.R
\name{saga_fastrepresentativeness}
\alias{saga_fastrepresentativeness}
\title{QGIS algorithm Fast representativeness}
\usage{
saga_fastrepresentativeness(
  INPUT = qgisprocess::qgis_default_value(),
  LOD = qgisprocess::qgis_default_value(),
  RESULT = qgisprocess::qgis_default_value(),
  RESULT_LOD = qgisprocess::qgis_default_value(),
  SEEDS = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{raster} - Input. Path to a raster layer.}

\item{LOD}{\code{number} - Level of Generalisation. A numeric value.}

\item{RESULT}{\code{rasterDestination} - Output. Path for new raster layer.}

\item{RESULT_LOD}{\code{rasterDestination} - Output Lod. Path for new raster layer.}

\item{SEEDS}{\code{rasterDestination} - Output Seeds. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Fast representativeness (saga:fastrepresentativeness)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULT - outputRaster - Output
\item RESULT_LOD - outputRaster - Output Lod
\item SEEDS - outputRaster - Output Seeds
}
}
}
