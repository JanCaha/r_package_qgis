% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_v_out_svg.R
\name{grass7_v_out_svg}
\alias{grass7_v_out_svg}
\title{QGIS algorithm v.out.svg}
\usage{
grass7_v_out_svg(
  input = qgisprocess::qgis_default_value(),
  type = qgisprocess::qgis_default_value(),
  precision = qgisprocess::qgis_default_value(),
  attribute = qgisprocess::qgis_default_value(),
  output = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{input}{\code{source} - Name of input vector map. Path to a vector layer.}

\item{type}{\code{enum}  of \verb{("poly", "line", "point")} - Output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{precision}{\code{number} - Coordinate precision. A numeric value.}

\item{attribute}{\code{field} - Attribute(s) to include in output SVG. The name of an existing field. ; delimited list of existing field names.}

\item{output}{\code{fileDestination} - SVG File. Path for new file.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_SNAP_TOLERANCE_PARAMETER}{\code{number} - v.in.ogr snap tolerance (-1 = no snap). A numeric value.}

\item{GRASS_MIN_AREA_PARAMETER}{\code{number} - v.in.ogr min area. A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS v.out.svg (grass7:v.out.svg)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputFile - SVG File
}
}
}
