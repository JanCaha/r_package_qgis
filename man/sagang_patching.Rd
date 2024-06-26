% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_patching.R
\name{sagang_patching}
\alias{sagang_patching}
\title{QGIS algorithm - Patching}
\usage{
sagang_patching(
  ORIGINAL = qgisprocess:::qgis_default_value(),
  COMPLETED = qgisprocess:::qgis_default_value(),
  ADDITIONAL = qgisprocess:::qgis_default_value(),
  RESAMPLING = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{ORIGINAL}{\code{raster} - Grid. Path to a raster layer.}

\item{COMPLETED}{\code{rasterDestination} - Patched Grid. Path for new raster layer.}

\item{ADDITIONAL}{\code{raster} - Patch Grid. Path to a raster layer.}

\item{RESAMPLING}{\code{enum}  of \verb{("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")} - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Patching (sagang:patching). ---------------- Arguments ----------------  ORIGINAL: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer COMPLETED: Patched Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ADDITIONAL: Patch Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
}
\details{
\subsection{Outputs description}{
\itemize{
\item COMPLETED - outputRaster - Patched Grid
}
}
}
