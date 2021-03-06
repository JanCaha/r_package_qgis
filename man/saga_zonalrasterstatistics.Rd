% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_zonalrasterstatistics.R
\name{saga_zonalrasterstatistics}
\alias{saga_zonalrasterstatistics}
\title{QGIS algorithm Zonal raster statistics}
\usage{
saga_zonalrasterstatistics(
  ZONES = qgisprocess::qgis_default_value(),
  CATLIST = qgisprocess::qgis_default_value(),
  STATLIST = qgisprocess::qgis_default_value(),
  ASPECT = qgisprocess::qgis_default_value(),
  SHORTNAMES = qgisprocess::qgis_default_value(),
  OUTTAB = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{ZONES}{\code{raster} - Zone Grid. Path to a raster layer.}

\item{CATLIST}{\code{multilayer} - Categorial Grids. .}

\item{STATLIST}{\code{multilayer} - Grids to analyze. .}

\item{ASPECT}{\code{raster} - Aspect. Path to a raster layer.}

\item{SHORTNAMES}{\code{boolean} - Short Field Names. 1 for true/yes. 0 for false/no.}

\item{OUTTAB}{\code{vectorDestination} - Zonal Statistics. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Zonal raster statistics (saga:zonalrasterstatistics)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTTAB - outputVector - Zonal Statistics
}
}
}
