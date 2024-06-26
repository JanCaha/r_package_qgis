% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_polygoncentroids.R
\name{sagang_polygoncentroids}
\alias{sagang_polygoncentroids}
\title{QGIS algorithm - Polygon centroids}
\usage{
sagang_polygoncentroids(
  POLYGONS = qgisprocess:::qgis_default_value(),
  CENTROIDS = qgisprocess:::qgis_default_value(),
  METHOD = qgisprocess:::qgis_default_value(),
  INSIDE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{POLYGONS}{\code{source} - Polygons. Path to a vector layer.}

\item{CENTROIDS}{\code{vectorDestination} - Centroids. Path for new vector layer.}

\item{METHOD}{\code{boolean} - Centroids for each part. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{INSIDE}{\code{boolean} - Force Inside. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Polygon centroids (sagang:polygoncentroids). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer CENTROIDS: Centroids 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Centroids for each part 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INSIDE: Force Inside 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item CENTROIDS - outputVector - Centroids
}
}
}
