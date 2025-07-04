% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_simplifygeometries.R
\name{qgis_simplifygeometries}
\alias{qgis_simplifygeometries}
\title{QGIS algorithm - Simplify}
\usage{
qgis_simplifygeometries(
  INPUT = qgisprocess:::qgis_default_value(),
  METHOD = qgisprocess:::qgis_default_value(),
  TOLERANCE = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{METHOD}{\code{enum}  of \verb{("Distance (Douglas-Peucker)", "Snap to grid", "Area (Visvalingam)")} - Simplification method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{TOLERANCE}{\code{distance} - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Simplified. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Simplify (native:simplifygeometries). Simplifies the geometries in a line or polygon layer by removing a number of vertices. This algorithm simplifies the geometries in a line or polygon layer. It creates a new layer with the same features as the ones in the input layer, but with geometries containing a lower number of vertices.  The algorithm gives a choice of simplification methods, including distance based (the "Douglas-Peucker" algorithm), area based ("Visvalingam" algorithm) and snapping geometries to a grid.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Simplified
}
}
}
