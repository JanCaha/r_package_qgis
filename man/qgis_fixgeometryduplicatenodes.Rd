% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_fixgeometryduplicatenodes.R
\name{qgis_fixgeometryduplicatenodes}
\alias{qgis_fixgeometryduplicatenodes}
\title{QGIS algorithm - Delete duplicated vertices}
\usage{
qgis_fixgeometryduplicatenodes(
  INPUT = qgisprocess:::qgis_default_value(),
  ERRORS = qgisprocess:::qgis_default_value(),
  UNIQUE_ID = qgisprocess:::qgis_default_value(),
  PART_IDX = qgisprocess:::qgis_default_value(),
  RING_IDX = qgisprocess:::qgis_default_value(),
  VERTEX_IDX = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  REPORT = qgisprocess:::qgis_default_value(),
  TOLERANCE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{ERRORS}{\code{source} - Error layer. Path to a vector layer.}

\item{UNIQUE_ID}{\code{field} - Field of original feature unique identifier. The name of an existing field. ; delimited list of existing field names.}

\item{PART_IDX}{\code{field} - Field of part index. The name of an existing field. ; delimited list of existing field names.}

\item{RING_IDX}{\code{field} - Field of ring index. The name of an existing field. ; delimited list of existing field names.}

\item{VERTEX_IDX}{\code{field} - Field of vertex index. The name of an existing field. ; delimited list of existing field names.}

\item{OUTPUT}{\code{sink} - Fixed duplicate vertices layer. Path for new vector layer.}

\item{REPORT}{\code{sink} - Report layer from fixing duplicate vertices. Path for new vector layer.}

\item{TOLERANCE}{\code{number} - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Delete duplicated vertices (native:fixgeometryduplicatenodes). Deletes duplicated vertices detected with the "Duplicated vertices" algorithm from the "Check geometry" section. This algorithm delete duplicate vertices based on an error layer from the "Duplicated vertices" algorithm in the "Check geometry" section.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Fixed duplicate vertices layer
\item REPORT - outputVector - Report layer from fixing duplicate vertices
}
}
}
