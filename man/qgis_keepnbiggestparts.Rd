% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_keepnbiggestparts.R
\name{qgis_keepnbiggestparts}
\alias{qgis_keepnbiggestparts}
\title{QGIS algorithm - Keep N biggest parts}
\usage{
qgis_keepnbiggestparts(
  POLYGONS = qgisprocess:::qgis_default_value(),
  PARTS = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{POLYGONS}{\code{source} - Input layer. Path to a vector layer.}

\item{PARTS}{\code{number} - Parts to keep. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Parts. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Keep N biggest parts (native:keepnbiggestparts). Creates a polygon layer in which multipart geometries have been removed, leaving only the n largest (in terms of area) parts. This algorithm takes a polygon layer and creates a new polygon layer in which multipart geometries have been removed, leaving only the n largest (in terms of area) parts.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Parts
}
}
}
