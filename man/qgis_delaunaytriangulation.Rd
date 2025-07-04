% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_delaunaytriangulation.R
\name{qgis_delaunaytriangulation}
\alias{qgis_delaunaytriangulation}
\title{QGIS algorithm - Delaunay triangulation}
\usage{
qgis_delaunaytriangulation(
  INPUT = qgisprocess:::qgis_default_value(),
  TOLERANCE = qgisprocess:::qgis_default_value(),
  ADD_ATTRIBUTES = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{TOLERANCE}{\code{number} - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{ADD_ATTRIBUTES}{\code{boolean} - Add point IDs to output. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Delaunay triangulation. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Delaunay triangulation (native:delaunaytriangulation). Creates a polygon layer with the Delaunay triangulation corresponding to a points layer. This algorithm creates a polygon layer with the Delaunay triangulation corresponding to a points layer.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Delaunay triangulation
}
}
}
