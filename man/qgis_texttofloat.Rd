% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_texttofloat.R
\name{qgis_texttofloat}
\alias{qgis_texttofloat}
\title{QGIS algorithm - Text to float}
\usage{
qgis_texttofloat(
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

\item{FIELD}{\code{field} - Text attribute to convert to float. The name of an existing field. ; delimited list of existing field names.}

\item{OUTPUT}{\code{sink} - Float from text. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS Text to float (qgis:texttofloat). Converts a text attribute containing numeric strings into a numeric attribute. This algorithm modifies the type of a given attribute in a vector layer, converting a text attribute containing numeric strings into a numeric attribute.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Float from text
}
}
}
