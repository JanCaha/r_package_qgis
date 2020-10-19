% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_multiparttosingleparts.R
\name{qgis_multiparttosingleparts}
\alias{qgis_multiparttosingleparts}
\title{QGIS algorithm Multipart to singleparts}
\usage{
qgis_multiparttosingleparts(
  INPUT = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{OUTPUT}{\code{sink} - Single parts. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Multipart to singleparts (native:multiparttosingleparts)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Single parts
}
}
}