% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_importshapes.R
\name{sagang_importshapes}
\alias{sagang_importshapes}
\title{QGIS algorithm - Import shapes}
\usage{
sagang_importshapes(
  SHAPES = qgisprocess:::qgis_default_value(),
  FILES = qgisprocess:::qgis_default_value(),
  GEOM_TYPE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{SHAPES}{\code{vectorDestination} - Shapes. Path for new vector layer.}

\item{FILES}{\code{file} - Files. Path to a file.}

\item{GEOM_TYPE}{\code{enum}  of \verb{("(0) Automatic", "(1) Point", "(2) Point (2.5D)", "(3) Multi-Point", "(4) Multi-Point (2.5D)", "(5) Line", "(6) Line (2.5D)", "(7) Polyline", "(8) Polyline (2.5D)", "(9) Polygon", "(10) Polygon (2.5D)", "(11) Multi-Polygon", "(12) Multi-Polygon (2.5D)")} - Geometry Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Import shapes (sagang:importshapes). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILES: Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file GEOM_TYPE: Geometry Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Automatic 		- 1: (1) Point 		- 2: (2) Point (2.5D) 		- 3: (3) Multi-Point 		- 4: (4) Multi-Point (2.5D) 		- 5: (5) Line 		- 6: (6) Line (2.5D) 		- 7: (7) Polyline 		- 8: (8) Polyline (2.5D) 		- 9: (9) Polygon 		- 10: (10) Polygon (2.5D) 		- 11: (11) Multi-Polygon 		- 12: (12) Multi-Polygon (2.5D) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
}
\details{
\subsection{Outputs description}{
\itemize{
\item SHAPES - outputVector - Shapes
}
}
}
