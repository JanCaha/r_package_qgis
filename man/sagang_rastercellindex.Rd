% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_rastercellindex.R
\name{sagang_rastercellindex}
\alias{sagang_rastercellindex}
\title{QGIS algorithm - Raster cell index}
\usage{
sagang_rastercellindex(
  GRID = qgisprocess:::qgis_default_value(),
  INDEX = qgisprocess:::qgis_default_value(),
  ORDER = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{GRID}{\code{raster} - Grid. Path to a raster layer.}

\item{INDEX}{\code{rasterDestination} - Index. Path for new raster layer.}

\item{ORDER}{\code{enum}  of \verb{("(0) ascending", "(1) descending")} - Sorting Order. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Raster cell index (sagang:rastercellindex). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer INDEX: Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ORDER: Sorting Order 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) ascending 		- 1: (1) descending 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
}
\details{
\subsection{Outputs description}{
\itemize{
\item INDEX - outputRaster - Index
}
}
}
