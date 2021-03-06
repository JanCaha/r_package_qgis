% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_snapgeometries.R
\name{qgis_snapgeometries}
\alias{qgis_snapgeometries}
\title{QGIS algorithm Snap geometries to layer}
\usage{
qgis_snapgeometries(
  INPUT = qgisprocess::qgis_default_value(),
  REFERENCE_LAYER = qgisprocess::qgis_default_value(),
  TOLERANCE = qgisprocess::qgis_default_value(),
  BEHAVIOR = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{REFERENCE_LAYER}{\code{source} - Reference layer. Path to a vector layer.}

\item{TOLERANCE}{\code{distance} - Tolerance. A numeric value.}

\item{BEHAVIOR}{\code{enum}  of \verb{("Prefer aligning nodes, insert extra vertices where required", "Prefer closest point, insert extra vertices where required", "Prefer aligning nodes, don't insert new vertices", "Prefer closest point, don't insert new vertices", "Move end points only, prefer aligning nodes", "Move end points only, prefer closest point", "Snap end points to end points only", "Snap to anchor nodes (single layer only)")} - Behavior. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{OUTPUT}{\code{sink} - Snapped geometry. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Snap geometries to layer (native:snapgeometries)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Snapped geometry
}
}
}
