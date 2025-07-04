% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_httprequest.R
\name{qgis_httprequest}
\alias{qgis_httprequest}
\title{QGIS algorithm - HTTP(S) POST/GET request}
\usage{
qgis_httprequest(
  URL = qgisprocess:::qgis_default_value(),
  METHOD = qgisprocess:::qgis_default_value(),
  DATA = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  AUTH_CONFIG = qgisprocess:::qgis_default_value(),
  FAIL_ON_ERROR = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{URL}{\code{string} - URL. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{METHOD}{\code{enum}  of \verb{("GET", "POST")} - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DATA}{\code{string} - POST data. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{fileDestination} - File destination. Path for new file.}

\item{AUTH_CONFIG}{\code{authcfg} - Authentication. An existing QGIS authentication ID string.}

\item{FAIL_ON_ERROR}{\code{boolean} - Consider HTTP errors as failures. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) HTTP(S) POST/GET request (native:httprequest). Performs a HTTP(S) POST/GET request and returns the result code, error message and the data. This algorithm performs a HTTP(S) POST/GET request and returns the HTTP status code and the reply data. If an error occurs then the error code and the message will be returned.  Optionally, the result can be written to a file on disk.  By default the algorithm will warn on errors. Optionally, the algorithm can be set to treat HTTP errors as failures.
}
\details{
\subsection{Outputs description}{
\itemize{
\item ERROR_CODE - outputNumber - Network error code
\item ERROR_MESSAGE - outputString - Network error message
\item OUTPUT - outputFile - File destination
\item RESULT_DATA - outputString - Reply data
\item STATUS_CODE - outputNumber - HTTP status code
}
}
}
