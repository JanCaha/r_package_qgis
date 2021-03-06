% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_i_gensig.R
\name{grass7_i_gensig}
\alias{grass7_i_gensig}
\title{QGIS algorithm i.gensig}
\usage{
grass7_i_gensig(
  trainingmap = qgisprocess::qgis_default_value(),
  input = qgisprocess::qgis_default_value(),
  signaturefile = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{trainingmap}{\code{raster} - Ground truth training map. Path to a raster layer.}

\item{input}{\code{multilayer} - Input rasters. .}

\item{signaturefile}{\code{fileDestination} - Signature File. Path for new file.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS i.gensig (grass7:i.gensig)
}
\details{
\subsection{Outputs description}{
\itemize{
\item signaturefile - outputFile - Signature File
}
}
}
