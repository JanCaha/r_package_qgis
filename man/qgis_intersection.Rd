% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_intersection.R
\name{qgis_intersection}
\alias{qgis_intersection}
\title{QGIS algorithm - Intersection}
\usage{
qgis_intersection(
  INPUT = qgisprocess:::qgis_default_value(),
  OVERLAY = qgisprocess:::qgis_default_value(),
  INPUT_FIELDS = qgisprocess:::qgis_default_value(),
  OVERLAY_FIELDS = qgisprocess:::qgis_default_value(),
  OVERLAY_FIELDS_PREFIX = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  GRID_SIZE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{OVERLAY}{\code{source} - Overlay layer. Path to a vector layer.}

\item{INPUT_FIELDS}{\code{field} - Input fields to keep (leave empty to keep all fields). The name of an existing field. ; delimited list of existing field names.}

\item{OVERLAY_FIELDS}{\code{field} - Overlay fields to keep (leave empty to keep all fields). The name of an existing field. ; delimited list of existing field names.}

\item{OVERLAY_FIELDS_PREFIX}{\code{string} - Overlay fields prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Intersection. Path for new vector layer.}

\item{GRID_SIZE}{\code{number} - Grid size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Intersection (native:intersection). Extracts overlapping portions of features between two layers. This algorithm extracts the overlapping portions of features in the Input and Overlay layers. Features in the output Intersection layer are assigned the attributes of the overlapping features from both the Input and Overlay layers.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Intersection
}
}
}
