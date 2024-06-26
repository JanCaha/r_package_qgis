% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_importsurferblankingfiles.R
\name{sagang_importsurferblankingfiles}
\alias{sagang_importsurferblankingfiles}
\title{QGIS algorithm - Import surfer blanking files}
\usage{
sagang_importsurferblankingfiles(
  SHAPES = qgisprocess:::qgis_default_value(),
  TABLE = qgisprocess:::qgis_default_value(),
  FILE = qgisprocess:::qgis_default_value(),
  TYPE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{SHAPES}{\code{vectorDestination} - Shapes. Path for new vector layer.}

\item{TABLE}{\code{vectorDestination} - Look up table (Points). Path for new vector layer.}

\item{FILE}{\code{file} - File. Path to a file.}

\item{TYPE}{\code{enum}  of \verb{("(0) points", "(1) lines", "(2) polygons")} - Shape Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Import surfer blanking files (sagang:importsurferblankingfiles). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer TABLE: Look up table (Points) 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file TYPE: Shape Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) points 		- 1: (1) lines 		- 2: (2) polygons 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
}
\details{
\subsection{Outputs description}{
\itemize{
\item SHAPES - outputVector - Shapes
\item TABLE - outputVector - Look up table (Points)
}
}
}
