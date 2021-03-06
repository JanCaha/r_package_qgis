% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_linedissolve.R
\name{saga_linedissolve}
\alias{saga_linedissolve}
\title{QGIS algorithm Line dissolve}
\usage{
saga_linedissolve(
  LINES = qgisprocess::qgis_default_value(),
  FIELD_1 = qgisprocess::qgis_default_value(),
  FIELD_2 = qgisprocess::qgis_default_value(),
  FIELD_3 = qgisprocess::qgis_default_value(),
  ALL = qgisprocess::qgis_default_value(),
  DISSOLVED = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{LINES}{\code{source} - Lines. Path to a vector layer.}

\item{FIELD_1}{\code{field} - 1. Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{FIELD_2}{\code{field} - 2. Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{FIELD_3}{\code{field} - 3. Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{ALL}{\code{enum}  of \verb{("[0] lines with same attribute value(s)", "[1] all lines")} - Dissolve.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DISSOLVED}{\code{vectorDestination} - Dissolved Lines. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Line dissolve (saga:linedissolve)
}
\details{
\subsection{Outputs description}{
\itemize{
\item DISSOLVED - outputVector - Dissolved Lines
}
}
}
