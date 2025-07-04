% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_downloadgpsdata.R
\name{qgis_downloadgpsdata}
\alias{qgis_downloadgpsdata}
\title{QGIS algorithm - Download GPS data from device}
\usage{
qgis_downloadgpsdata(
  DEVICE = qgisprocess:::qgis_default_value(),
  PORT = qgisprocess:::qgis_default_value(),
  FEATURE_TYPE = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEVICE}{\code{string} - Device. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{PORT}{\code{string} - Port. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{FEATURE_TYPE}{\code{enum}  of \verb{("Waypoints", "Routes", "Tracks")} - Feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{OUTPUT}{\code{fileDestination} - Output. Path for new file.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Download GPS data from device (native:downloadgpsdata). Downloads data from a GPS device into the GPX standard format. This algorithm uses the GPSBabel tool to download data from a GPS device into the GPX standard format.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputFile - Output
\item OUTPUT_LAYER - outputVector - Output layer
}
}
}
