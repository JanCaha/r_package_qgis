% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_addxyfields.R
\name{qgis_addxyfields}
\alias{qgis_addxyfields}
\title{QGIS algorithm Add X/Y fields to layer}
\usage{
qgis_addxyfields(
  INPUT = qgisprocess::qgis_default_value(),
  CRS = qgisprocess::qgis_default_value(),
  PREFIX = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{CRS}{\code{crs} - Coordinate system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..}

\item{PREFIX}{\code{string} - Field prefix. String value.}

\item{OUTPUT}{\code{sink} - Added fields. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Add X/Y fields to layer (native:addxyfields)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Added fields
}
}
}
