% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_multiunion.R
\name{qgis_multiunion}
\alias{qgis_multiunion}
\title{QGIS algorithm - Union (multiple)}
\usage{
qgis_multiunion(
  INPUT = qgisprocess:::qgis_default_value(),
  OVERLAYS = qgisprocess:::qgis_default_value(),
  OVERLAY_FIELDS_PREFIX = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{OVERLAYS}{\code{multilayer} - Overlay layers. .}

\item{OVERLAY_FIELDS_PREFIX}{\code{string} - Overlay fields prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Union. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Union (multiple) (native:multiunion). Checks overlaps between features on the same layer or on more layers and creates separate features for overlapping and non-overlapping parts. This algorithm checks overlaps between features within the Input layer and creates separate features for overlapping and non-overlapping parts. The area of overlap will create as many identical overlapping features as there are features that participate in that overlap.  Multiple Overlay layers can also be used, in which case features from each layer are split at their overlap with features from all other layers, creating a layer containing all the portions from both Input and Overlay layers. The attribute table of the Union layer is filled with attribute values from the respective original layer for non-overlapping features, and attribute values from both layers for overlapping features.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Union
}
}
}
