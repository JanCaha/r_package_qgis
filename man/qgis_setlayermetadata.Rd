% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_setlayermetadata.R
\name{qgis_setlayermetadata}
\alias{qgis_setlayermetadata}
\title{QGIS algorithm - Set layer metadata}
\usage{
qgis_setlayermetadata(
  INPUT = qgisprocess:::qgis_default_value(),
  METADATA = qgisprocess:::qgis_default_value(),
  DEFAULT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{layer} - Layer. Path to a vector, raster or mesh layer.}

\item{METADATA}{\code{file} - Metadata file. Path to a file.}

\item{DEFAULT}{\code{boolean} - Save metadata as default. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Set layer metadata (native:setlayermetadata). Applies the metadata from a QMD file to a layer. This algorithm applies the metadata to a layer. The metadata must be defined as QMD file.  Any existing metadata in the layer will be replaced.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputLayer - Updated
}
}
}
