% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass_r_transect.R
\name{grass_r_transect}
\alias{grass_r_transect}
\title{QGIS algorithm - r.transect}
\usage{
grass_r_transect(
  map = qgisprocess:::qgis_default_value(),
  line = qgisprocess:::qgis_default_value(),
  null_value = qgisprocess:::qgis_default_value(),
  .g = qgisprocess:::qgis_default_value(),
  html = qgisprocess:::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{map}{\code{raster} - Raster map to be queried. Path to a raster layer.}

\item{line}{\code{string} - Transect definition: east,north,azimuth,distance(,east,north,azimuth,distance,...). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{null_value}{\code{string} - String representing NULL value. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{.g}{\code{boolean} - Output easting and northing in first two columns of four column output. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -g.}

\item{html}{\code{fileDestination} - Transect file. Path for new file.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS r.transect (grass:r.transect). Outputs raster map layer values lying along user defined transect line(s).
}
\details{
\subsection{Outputs description}{
\itemize{
\item html - outputHtml - Transect file
}
}
}
