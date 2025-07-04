% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_exportlayermetadata.R
\name{qgis_exportlayermetadata}
\alias{qgis_exportlayermetadata}
\title{QGIS algorithm - Export layer metadata}
\usage{
qgis_exportlayermetadata(
  INPUT = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{layer} - Layer. Path to a vector, raster or mesh layer.}

\item{OUTPUT}{\code{fileDestination} - Output. Path for new file.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Export layer metadata (native:exportlayermetadata). Exports layer's metadata to a QMD file. This algorithm exports layer's metadata to a QMD file.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputFile - Output
}
}
}
