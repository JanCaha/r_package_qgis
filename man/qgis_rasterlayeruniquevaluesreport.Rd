% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_rasterlayeruniquevaluesreport.R
\name{qgis_rasterlayeruniquevaluesreport}
\alias{qgis_rasterlayeruniquevaluesreport}
\title{QGIS algorithm - Raster layer unique values report}
\usage{
qgis_rasterlayeruniquevaluesreport(
  INPUT = qgisprocess:::qgis_default_value(),
  BAND = qgisprocess:::qgis_default_value(),
  OUTPUT_HTML_FILE = qgisprocess:::qgis_default_value(),
  OUTPUT_TABLE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{raster} - Input layer. Path to a raster layer.}

\item{BAND}{\code{band} - Band number. Integer value representing an existing raster band number.}

\item{OUTPUT_HTML_FILE}{\code{fileDestination} - Unique values report. Path for new file.}

\item{OUTPUT_TABLE}{\code{sink} - Unique values table. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Raster layer unique values report (native:rasterlayeruniquevaluesreport). Returns the count and area of each unique value in a given raster layer. This algorithm returns the count and area of each unique value in a given raster layer. The area calculation is done in the area unit of the layer's CRS.
}
\details{
\subsection{Outputs description}{
\itemize{
\item CRS_AUTHID - outputString - CRS authority identifier
\item EXTENT - outputString - Extent
\item HEIGHT_IN_PIXELS - outputNumber - Height in pixels
\item NODATA_PIXEL_COUNT - outputNumber - NoData pixel count
\item OUTPUT_HTML_FILE - outputHtml - Unique values report
\item OUTPUT_TABLE - outputVector - Unique values table
\item TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
\item WIDTH_IN_PIXELS - outputNumber - Width in pixels
}
}
}
