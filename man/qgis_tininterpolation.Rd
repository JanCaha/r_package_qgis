% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_tininterpolation.R
\name{qgis_tininterpolation}
\alias{qgis_tininterpolation}
\title{QGIS algorithm TIN interpolation}
\usage{
qgis_tininterpolation(
  INTERPOLATION_DATA = qgisprocess::qgis_default_value(),
  METHOD = qgisprocess::qgis_default_value(),
  EXTENT = qgisprocess::qgis_default_value(),
  PIXEL_SIZE = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  TRIANGULATION = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INTERPOLATION_DATA}{\code{idw_interpolation_data} - Input layer(s). .}

\item{METHOD}{\code{enum}  of \verb{("Linear", "Clough-Toucher (cubic)")} - Interpolation method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{EXTENT}{\code{extent} - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{PIXEL_SIZE}{\code{number} - Output raster size. A numeric value.}

\item{OUTPUT}{\code{rasterDestination} - Interpolated. Path for new raster layer.}

\item{TRIANGULATION}{\code{sink} - Triangulation. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS TIN interpolation (qgis:tininterpolation)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputRaster - Interpolated
\item TRIANGULATION - outputVector - Triangulation
}
}
}
