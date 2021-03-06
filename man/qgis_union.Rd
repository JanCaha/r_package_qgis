% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_union.R
\name{qgis_union}
\alias{qgis_union}
\title{QGIS algorithm Union}
\usage{
qgis_union(
  INPUT = qgisprocess::qgis_default_value(),
  OVERLAY = qgisprocess::qgis_default_value(),
  OVERLAY_FIELDS_PREFIX = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{OVERLAY}{\code{source} - Overlay layer. Path to a vector layer.}

\item{OVERLAY_FIELDS_PREFIX}{\code{string} - Overlay fields prefix. String value.}

\item{OUTPUT}{\code{sink} - Union. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Union (native:union)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Union
}
}
}
