% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_pointsfilter.R
\name{saga_pointsfilter}
\alias{saga_pointsfilter}
\title{QGIS algorithm Points filter}
\usage{
saga_pointsfilter(
  POINTS = qgisprocess::qgis_default_value(),
  FIELD = qgisprocess::qgis_default_value(),
  RADIUS = qgisprocess::qgis_default_value(),
  MINNUM = qgisprocess::qgis_default_value(),
  MAXNUM = qgisprocess::qgis_default_value(),
  QUADRANTS = qgisprocess::qgis_default_value(),
  METHOD = qgisprocess::qgis_default_value(),
  TOLERANCE = qgisprocess::qgis_default_value(),
  PERCENT = qgisprocess::qgis_default_value(),
  FILTER = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{POINTS}{\code{source} - Points. Path to a vector layer.}

\item{FIELD}{\code{field} - Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{RADIUS}{\code{number} - Radius. A numeric value.}

\item{MINNUM}{\code{number} - Minimum Number of Points. A numeric value.}

\item{MAXNUM}{\code{number} - Maximum Number of Points. A numeric value.}

\item{QUADRANTS}{\code{boolean} - Quadrants. 1 for true/yes. 0 for false/no.}

\item{METHOD}{\code{enum}  of \verb{("[0] keep maxima (with tolerance)", "[1] keep minima (with tolerance)", "[2] remove maxima (with tolerance)", "[3] remove minima (with tolerance)", "[4] remove below percentile", "[5] remove above percentile")} - Filter Criterion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{TOLERANCE}{\code{number} - Tolerance. A numeric value.}

\item{PERCENT}{\code{number} - Percentile. A numeric value.}

\item{FILTER}{\code{vectorDestination} - Filtered Points. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Points filter (saga:pointsfilter)
}
\details{
\subsection{Outputs description}{
\itemize{
\item FILTER - outputVector - Filtered Points
}
}
}
