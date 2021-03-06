% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_keepnbiggestparts.R
\name{qgis_keepnbiggestparts}
\alias{qgis_keepnbiggestparts}
\title{QGIS algorithm Keep N biggest parts}
\usage{
qgis_keepnbiggestparts(
  POLYGONS = qgisprocess::qgis_default_value(),
  PARTS = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{POLYGONS}{\code{source} - Polygons. Path to a vector layer.}

\item{PARTS}{\code{number} - Parts to keep. A numeric value.}

\item{OUTPUT}{\code{sink} - Parts. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS Keep N biggest parts (qgis:keepnbiggestparts)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Parts
}
}
}
