% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_orderbyexpression.R
\name{qgis_orderbyexpression}
\alias{qgis_orderbyexpression}
\title{QGIS algorithm Order by expression}
\usage{
qgis_orderbyexpression(
  INPUT = qgisprocess::qgis_default_value(),
  EXPRESSION = qgisprocess::qgis_default_value(),
  ASCENDING = qgisprocess::qgis_default_value(),
  NULLS_FIRST = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{EXPRESSION}{\code{expression} - Expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.}

\item{ASCENDING}{\code{boolean} - Sort ascending. 1 for true/yes. 0 for false/no.}

\item{NULLS_FIRST}{\code{boolean} - Sort nulls first. 1 for true/yes. 0 for false/no.}

\item{OUTPUT}{\code{sink} - Ordered. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Order by expression (native:orderbyexpression)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Ordered
}
}
}
