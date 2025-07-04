% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_joinattributestable.R
\name{qgis_joinattributestable}
\alias{qgis_joinattributestable}
\title{QGIS algorithm - Join attributes by field value}
\usage{
qgis_joinattributestable(
  INPUT = qgisprocess:::qgis_default_value(),
  FIELD = qgisprocess:::qgis_default_value(),
  INPUT_2 = qgisprocess:::qgis_default_value(),
  FIELD_2 = qgisprocess:::qgis_default_value(),
  FIELDS_TO_COPY = qgisprocess:::qgis_default_value(),
  METHOD = qgisprocess:::qgis_default_value(),
  DISCARD_NONMATCHING = qgisprocess:::qgis_default_value(),
  PREFIX = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  NON_MATCHING = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{FIELD}{\code{field} - Table field. The name of an existing field. ; delimited list of existing field names.}

\item{INPUT_2}{\code{source} - Input layer 2. Path to a vector layer.}

\item{FIELD_2}{\code{field} - Table field 2. The name of an existing field. ; delimited list of existing field names.}

\item{FIELDS_TO_COPY}{\code{field} - Layer 2 fields to copy (leave empty to copy all fields). The name of an existing field. ; delimited list of existing field names.}

\item{METHOD}{\code{enum}  of \verb{("Create separate feature for each matching feature (one-to-many)", "Take attributes of the first matching feature only (one-to-one)")} - Join type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DISCARD_NONMATCHING}{\code{boolean} - Discard records which could not be joined. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{PREFIX}{\code{string} - Joined field prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Joined layer. Path for new vector layer.}

\item{NON_MATCHING}{\code{sink} - Unjoinable features from first layer. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Join attributes by field value (native:joinattributestable). Creates a vector layer that is an extended version of the input one, with additional attributes taken from a second vector layer. This algorithm takes an input vector layer and creates a new vector layer that is an extended version of the input one, with additional attributes in its attribute table.  The additional attributes and their values are taken from a second vector layer. An attribute is selected in each of them to define the join criteria.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
}
\details{
\subsection{Outputs description}{
\itemize{
\item JOINED_COUNT - outputNumber - Number of joined features from input table
\item NON_MATCHING - outputVector - Unjoinable features from first layer
\item OUTPUT - outputVector - Joined layer
\item UNJOINABLE_COUNT - outputNumber - Number of unjoinable features from input table
}
}
}
