% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_isodataclusteringforgrids.R
\name{saga_isodataclusteringforgrids}
\alias{saga_isodataclusteringforgrids}
\title{QGIS algorithm Isodata clustering for grids}
\usage{
saga_isodataclusteringforgrids(
  FEATURES = qgisprocess::qgis_default_value(),
  CLUSTER = qgisprocess::qgis_default_value(),
  STATISTICS = qgisprocess::qgis_default_value(),
  NORMALIZE = qgisprocess::qgis_default_value(),
  ITERATIONS = qgisprocess::qgis_default_value(),
  CLUSTER_INI = qgisprocess::qgis_default_value(),
  CLUSTER_MAX = qgisprocess::qgis_default_value(),
  SAMPLES_MIN = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{FEATURES}{\code{multilayer} - Features. .}

\item{CLUSTER}{\code{rasterDestination} - Clusters. Path for new raster layer.}

\item{STATISTICS}{\code{source} - Statistics. Path to a vector layer.}

\item{NORMALIZE}{\code{boolean} - Normalize. 1 for true/yes. 0 for false/no.}

\item{ITERATIONS}{\code{number} - Maximum Number of Iterations. A numeric value.}

\item{CLUSTER_INI}{\code{number} - Initial Number of Clusters. A numeric value.}

\item{CLUSTER_MAX}{\code{number} - Maximum Number of Clusters. A numeric value.}

\item{SAMPLES_MIN}{\code{number} - Minimum Number of Samples in a Cluster. A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Isodata clustering for grids (saga:isodataclusteringforgrids)
}
\details{
\subsection{Outputs description}{
\itemize{
\item CLUSTER - outputRaster - Clusters
}
}
}
