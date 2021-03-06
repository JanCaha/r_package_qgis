% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_removesmallpixelclumpstonodata.R
\name{saga_removesmallpixelclumpstonodata}
\alias{saga_removesmallpixelclumpstonodata}
\title{QGIS algorithm Remove small pixel clumps (to no-data)}
\usage{
saga_removesmallpixelclumpstonodata(
  GRID = qgisprocess::qgis_default_value(),
  THRESHOLD = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{GRID}{\code{raster} - Input Grid. Path to a raster layer.}

\item{THRESHOLD}{\code{number} - Min. Size. A numeric value.}

\item{OUTPUT}{\code{rasterDestination} - Filtered Grid. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Remove small pixel clumps (to no-data) (saga:removesmallpixelclumpstonodata)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputRaster - Filtered Grid
}
}
}
