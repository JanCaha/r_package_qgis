% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_polygonpartstoseparatepolygons.R
\name{sagang_polygonpartstoseparatepolygons}
\alias{sagang_polygonpartstoseparatepolygons}
\title{QGIS algorithm - Polygon parts to separate polygons}
\usage{
sagang_polygonpartstoseparatepolygons(
  POLYGONS = qgisprocess:::qgis_default_value(),
  PARTS = qgisprocess:::qgis_default_value(),
  LAKES = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{POLYGONS}{\code{source} - Polygons. Path to a vector layer.}

\item{PARTS}{\code{vectorDestination} - Polygon Parts. Path for new vector layer.}

\item{LAKES}{\code{boolean} - Lakes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Polygon parts to separate polygons (sagang:polygonpartstoseparatepolygons). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer PARTS: Polygon Parts 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LAKES: Lakes 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item PARTS - outputVector - Polygon Parts
}
}
}
