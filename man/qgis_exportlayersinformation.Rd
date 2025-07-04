% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_exportlayersinformation.R
\name{qgis_exportlayersinformation}
\alias{qgis_exportlayersinformation}
\title{QGIS algorithm - Export layer(s) information}
\usage{
qgis_exportlayersinformation(
  LAYERS = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{LAYERS}{\code{multilayer} - Input layer(s). .}

\item{OUTPUT}{\code{sink} - Output. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Export layer(s) information (native:exportlayersinformation). Creates a polygon layer with features corresponding to the extent of selected layer(s). This algorithm creates a polygon layer with features corresponding to the extent of selected layer(s).  Additional layer details - CRS, provider name, file path, layer name, subset filter, abstract and attribution - are attached as attributes to each feature.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Output
}
}
}
