% Generated by roxygen2: do not edit by hand
% Please edit documentation in
%   R/saga_multiresolutionindexofvalleybottomflatnessmrvbf.R
\name{saga_multiresolutionindexofvalleybottomflatnessmrvbf}
\alias{saga_multiresolutionindexofvalleybottomflatnessmrvbf}
\title{QGIS algorithm Multiresolution index of valley bottom flatness (mrvbf)}
\usage{
saga_multiresolutionindexofvalleybottomflatnessmrvbf(
  DEM = qgisprocess::qgis_default_value(),
  T_SLOPE = qgisprocess::qgis_default_value(),
  T_PCTL_V = qgisprocess::qgis_default_value(),
  T_PCTL_R = qgisprocess::qgis_default_value(),
  P_SLOPE = qgisprocess::qgis_default_value(),
  P_PCTL = qgisprocess::qgis_default_value(),
  UPDATE = qgisprocess::qgis_default_value(),
  CLASSIFY = qgisprocess::qgis_default_value(),
  MAX_RES = qgisprocess::qgis_default_value(),
  MRVBF = qgisprocess::qgis_default_value(),
  MRRTF = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{T_SLOPE}{\code{number} - Initial Threshold for Slope. A numeric value.}

\item{T_PCTL_V}{\code{number} - Threshold for Elevation Percentile (Lowness). A numeric value.}

\item{T_PCTL_R}{\code{number} - Threshold for Elevation Percentile (Upness). A numeric value.}

\item{P_SLOPE}{\code{number} - Shape Parameter for Slope. A numeric value.}

\item{P_PCTL}{\code{number} - Shape Parameter for Elevation Percentile. A numeric value.}

\item{UPDATE}{\code{boolean} - Update Views. 1 for true/yes. 0 for false/no.}

\item{CLASSIFY}{\code{boolean} - Classify. 1 for true/yes. 0 for false/no.}

\item{MAX_RES}{\code{number} - Maximum Resolution (Percentage). A numeric value.}

\item{MRVBF}{\code{rasterDestination} - MRVBF. Path for new raster layer.}

\item{MRRTF}{\code{rasterDestination} - MRRTF. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Multiresolution index of valley bottom flatness (mrvbf) (saga:multiresolutionindexofvalleybottomflatnessmrvbf)
}
\details{
\subsection{Outputs description}{
\itemize{
\item MRVBF - outputRaster - MRVBF
\item MRRTF - outputRaster - MRRTF
}
}
}
