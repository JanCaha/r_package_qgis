% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass_r_regression_line.R
\name{grass_r_regression_line}
\alias{grass_r_regression_line}
\title{QGIS algorithm - r.regression.line}
\usage{
grass_r_regression_line(
  mapx = qgisprocess:::qgis_default_value(),
  mapy = qgisprocess:::qgis_default_value(),
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
\item{mapx}{\code{raster} - Layer for x coefficient. Path to a raster layer.}

\item{mapy}{\code{raster} - Layer for y coefficient. Path to a raster layer.}

\item{html}{\code{fileDestination} - Regression coefficients. Path for new file.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS r.regression.line (grass:r.regression.line). Calculates linear regression from two raster layers : y = a + b*x.
}
\details{
\subsection{Outputs description}{
\itemize{
\item html - outputHtml - Regression coefficients
}
}
}
