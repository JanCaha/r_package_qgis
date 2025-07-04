% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_lowestpositioninrasterstack.R
\name{qgis_lowestpositioninrasterstack}
\alias{qgis_lowestpositioninrasterstack}
\title{QGIS algorithm - Lowest position in raster stack}
\usage{
qgis_lowestpositioninrasterstack(
  INPUT_RASTERS = qgisprocess:::qgis_default_value(),
  REFERENCE_LAYER = qgisprocess:::qgis_default_value(),
  IGNORE_NODATA = qgisprocess:::qgis_default_value(),
  OUTPUT_NODATA_VALUE = qgisprocess:::qgis_default_value(),
  CREATION_OPTIONS = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT_RASTERS}{\code{multilayer} - Input raster layers. .}

\item{REFERENCE_LAYER}{\code{raster} - Reference layer. Path to a raster layer.}

\item{IGNORE_NODATA}{\code{boolean} - Ignore NoData values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT_NODATA_VALUE}{\code{number} - Output NoData value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CREATION_OPTIONS}{\code{string} - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{rasterDestination} - Output layer. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Lowest position in raster stack (native:lowestpositioninrasterstack). Evaluates on a cell-by-cell basis the position of the raster with the lowest value in a stack of rasters. This algorithm evaluates on a cell-by-cell basis the position of the raster with the lowest value in a stack of rasters. Position counts start with 1 and range to the total number of input rasters. The order of the input rasters is relevant for the algorithm. If multiple rasters feature the lowest value, the first raster will be used for the position value.  If multiband rasters are used in the data raster stack, the algorithm will always perform the analysis on the first band of the rasters - use GDAL to use other bands in the analysis. Any NoData cells in the raster layer stack will result in a NoData cell in the output raster unless the "ignore NoData" parameter is checked. The output NoData value can be set manually. The output rasters extent and resolution is defined by a reference raster layer and is always of int32 type.
}
\details{
\subsection{Outputs description}{
\itemize{
\item CRS_AUTHID - outputString - CRS authority identifier
\item EXTENT - outputString - Extent
\item HEIGHT_IN_PIXELS - outputNumber - Height in pixels
\item OUTPUT - outputRaster - Output layer
\item TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
\item WIDTH_IN_PIXELS - outputNumber - Width in pixels
}
}
}
