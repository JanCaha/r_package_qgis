% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_buffer.R
\name{qgis_buffer}
\alias{qgis_buffer}
\title{QGIS algorithm - Buffer}
\usage{
qgis_buffer(
  INPUT = qgisprocess:::qgis_default_value(),
  DISTANCE = qgisprocess:::qgis_default_value(),
  SEGMENTS = qgisprocess:::qgis_default_value(),
  END_CAP_STYLE = qgisprocess:::qgis_default_value(),
  JOIN_STYLE = qgisprocess:::qgis_default_value(),
  MITER_LIMIT = qgisprocess:::qgis_default_value(),
  DISSOLVE = qgisprocess:::qgis_default_value(),
  SEPARATE_DISJOINT = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{DISTANCE}{\code{distance} - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{SEGMENTS}{\code{number} - Segments. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{END_CAP_STYLE}{\code{enum}  of \verb{("Round", "Flat", "Square")} - End cap style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{JOIN_STYLE}{\code{enum}  of \verb{("Round", "Miter", "Bevel")} - Join style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{MITER_LIMIT}{\code{number} - Miter limit. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{DISSOLVE}{\code{boolean} - Dissolve result. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{SEPARATE_DISJOINT}{\code{boolean} - Keep disjoint results separate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Buffered. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Buffer (native:buffer). Computes a buffer area for all the features in an input layer, using a fixed or dynamic distance. This algorithm computes a buffer area for all the features in an input layer, using a fixed or dynamic distance.  The segments parameter controls the number of line segments to use to approximate a quarter circle when creating rounded offsets.  The end cap style parameter controls how line endings are handled in the buffer.  The join style parameter specifies whether round, miter or beveled joins should be used when offsetting corners in a line.  The miter limit parameter is only applicable for miter join styles, and controls the maximum distance from the offset curve to use when creating a mitered join.  ---------------- Notes ----------------   - This algorithm may drop existing primary keys or FID values and regenerate them in output layers, depending on the input parameters.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Buffered
}
}
}
