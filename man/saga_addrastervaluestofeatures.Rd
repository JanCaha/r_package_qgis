% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_addrastervaluestofeatures.R
\name{saga_addrastervaluestofeatures}
\alias{saga_addrastervaluestofeatures}
\title{QGIS algorithm Add raster values to features}
\usage{
saga_addrastervaluestofeatures(
  SHAPES = qgisprocess::qgis_default_value(),
  GRIDS = qgisprocess::qgis_default_value(),
  RESAMPLING = qgisprocess::qgis_default_value(),
  RESULT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{SHAPES}{\code{source} - Shapes. Path to a vector layer.}

\item{GRIDS}{\code{multilayer} - Grids. .}

\item{RESAMPLING}{\code{enum}  of \verb{("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")} - Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{RESULT}{\code{vectorDestination} - Result. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Add raster values to features (saga:addrastervaluestofeatures)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULT - outputVector - Result
}
}
}
