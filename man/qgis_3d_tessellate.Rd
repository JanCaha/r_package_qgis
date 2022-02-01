% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/3d_tessellate.R
\name{qgis_3d_tessellate}
\alias{qgis_3d_tessellate}
\title{QGIS algorithm Tessellate}
\usage{
qgis_3d_tessellate(
  INPUT = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{OUTPUT}{\code{sink} - Tessellated. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (3D) Tessellate (3d:tessellate)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Tessellated
}
}
}