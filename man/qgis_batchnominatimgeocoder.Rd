% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_batchnominatimgeocoder.R
\name{qgis_batchnominatimgeocoder}
\alias{qgis_batchnominatimgeocoder}
\title{QGIS algorithm - Batch Nominatim geocoder}
\usage{
qgis_batchnominatimgeocoder(
  INPUT = qgisprocess:::qgis_default_value(),
  FIELD = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{FIELD}{\code{field} - Address field. The name of an existing field. ; delimited list of existing field names.}

\item{OUTPUT}{\code{sink} - Geocoded. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Batch Nominatim geocoder (native:batchnominatimgeocoder). Geocodes features in a vector layer using the Nominatim service. This algorithm performs batch geocoding using the a href="#"Nominatim/a service against an input layer string field.  The output layer will have a point geometry reflecting the geocoded location as well as a number of attributes associated to the geocoded location.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Geocoded
}
}
}
