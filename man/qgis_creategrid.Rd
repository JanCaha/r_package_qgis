% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_creategrid.R
\name{qgis_creategrid}
\alias{qgis_creategrid}
\title{QGIS algorithm Create grid}
\usage{
qgis_creategrid(
  TYPE = qgisprocess::qgis_default_value(),
  EXTENT = qgisprocess::qgis_default_value(),
  HSPACING = qgisprocess::qgis_default_value(),
  VSPACING = qgisprocess::qgis_default_value(),
  HOVERLAY = qgisprocess::qgis_default_value(),
  VOVERLAY = qgisprocess::qgis_default_value(),
  CRS = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{TYPE}{\code{enum}  of \verb{("Point", "Line", "Rectangle (Polygon)", "Diamond (Polygon)", "Hexagon (Polygon)")} - Grid type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{EXTENT}{\code{extent} - Grid extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{HSPACING}{\code{distance} - Horizontal spacing. A numeric value.}

\item{VSPACING}{\code{distance} - Vertical spacing. A numeric value.}

\item{HOVERLAY}{\code{distance} - Horizontal overlay. A numeric value.}

\item{VOVERLAY}{\code{distance} - Vertical overlay. A numeric value.}

\item{CRS}{\code{crs} - Grid CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..}

\item{OUTPUT}{\code{sink} - Grid. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Create grid (native:creategrid)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Grid
}
}
}
