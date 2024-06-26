% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass_r_texture.R
\name{grass_r_texture}
\alias{grass_r_texture}
\title{QGIS algorithm - r.texture}
\usage{
grass_r_texture(
  input = qgisprocess:::qgis_default_value(),
  method = qgisprocess:::qgis_default_value(),
  size = qgisprocess:::qgis_default_value(),
  distance = qgisprocess:::qgis_default_value(),
  .s = qgisprocess:::qgis_default_value(),
  .a = qgisprocess:::qgis_default_value(),
  output = qgisprocess:::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{input}{\code{raster} - Name of input raster map. Path to a raster layer.}

\item{method}{\code{enum}  of \verb{("asm", "contrast", "corr", "var", "idm", "sa", "se", "sv", "entr", "dv", "de", "moc1", "moc2")} - Textural measurement method(s). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{size}{\code{number} - The size of moving window (odd and = 3). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{distance}{\code{number} - The distance between two samples (= 1). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{.s}{\code{boolean} - Separate output for each angle (0, 45, 90, 135). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -s.}

\item{.a}{\code{boolean} - Calculate all textural measurements. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -a.}

\item{output}{\code{folderDestination} - Texture files directory. Path for an existing or new folder.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS r.texture (grass:r.texture). Generate images with textural features from a raster map.
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputFolder - Texture files directory
}
}
}
