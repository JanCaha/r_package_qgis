% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_removeduplicatevertices.R
\name{qgis_removeduplicatevertices}
\alias{qgis_removeduplicatevertices}
\title{QGIS algorithm - Remove duplicate vertices}
\usage{
qgis_removeduplicatevertices(
  INPUT = qgisprocess:::qgis_default_value(),
  TOLERANCE = qgisprocess:::qgis_default_value(),
  USE_Z_VALUE = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{TOLERANCE}{\code{distance} - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{USE_Z_VALUE}{\code{boolean} - Use Z Value. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Cleaned. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Remove duplicate vertices (native:removeduplicatevertices). Removes duplicate vertices from features, wherever removing the vertices does not result in a degenerate geometry. This algorithm removes duplicate vertices from features, wherever removing the vertices does not result in a degenerate geometry.  The tolerance parameter specifies the tolerance for coordinates when determining whether vertices are identical.  By default, z values are not considered when detecting duplicate vertices. E.g. two vertices with the same x and y coordinate but different z values will still be considered duplicate and one will be removed. If the Use Z Value parameter is true, then the z values are also tested and vertices with the same x and y but different z will be maintained.  Note that duplicate vertices are not tested between different parts of a multipart geometry. E.g. a multipoint geometry with overlapping points will not be changed by this method.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Cleaned
}
}
}
