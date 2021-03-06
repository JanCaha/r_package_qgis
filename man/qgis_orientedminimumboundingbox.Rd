% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_orientedminimumboundingbox.R
\name{qgis_orientedminimumboundingbox}
\alias{qgis_orientedminimumboundingbox}
\title{QGIS algorithm Oriented minimum bounding box}
\usage{
qgis_orientedminimumboundingbox(
  INPUT = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{OUTPUT}{\code{sink} - Bounding boxes. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Oriented minimum bounding box (native:orientedminimumboundingbox)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Bounding boxes
}
}
}
