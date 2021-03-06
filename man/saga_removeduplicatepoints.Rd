% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_removeduplicatepoints.R
\name{saga_removeduplicatepoints}
\alias{saga_removeduplicatepoints}
\title{QGIS algorithm Remove duplicate points}
\usage{
saga_removeduplicatepoints(
  POINTS = qgisprocess::qgis_default_value(),
  FIELD = qgisprocess::qgis_default_value(),
  METHOD = qgisprocess::qgis_default_value(),
  NUMERIC = qgisprocess::qgis_default_value(),
  RESULT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{POINTS}{\code{source} - Points. Path to a vector layer.}

\item{FIELD}{\code{field} - Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{METHOD}{\code{enum}  of \verb{("[0] first point", "[1] last point", "[2] point with minimum attribute value", "[3] point with maximum attribute value")} - Point to Keep. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{NUMERIC}{\code{enum}  of \verb{("[0] take value from the point to be kept", "[1] minimum value of all duplicates", "[2] maximum value of all duplicates", "[3] mean value of all duplicates")} - Numeric Attribute Values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{RESULT}{\code{vectorDestination} - Result. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Remove duplicate points (saga:removeduplicatepoints)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULT - outputVector - Result
}
}
}
