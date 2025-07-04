% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_poleofinaccessibility.R
\name{qgis_poleofinaccessibility}
\alias{qgis_poleofinaccessibility}
\title{QGIS algorithm - Pole of inaccessibility}
\usage{
qgis_poleofinaccessibility(
  INPUT = qgisprocess:::qgis_default_value(),
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

\item{TOLERANCE}{\code{distance} - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Point. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Pole of inaccessibility (native:poleofinaccessibility). Creates a point layer with features representing the most distant internal point from the boundary of the surface for a polygon layer. This algorithm calculates the pole of inaccessibility for a polygon layer, which is the most distant internal point from the boundary of the surface. This algorithm uses the 'polylabel' algorithm (Vladimir Agafonkin, 2016), which is an iterative approach guaranteed to find the true pole of inaccessibility within a specified tolerance (in layer units). More precise tolerances require more iterations and will take longer to calculate.  The distance from the calculated pole to the polygon boundary will be stored as a new attribute in the output layer.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Point
}
}
}
