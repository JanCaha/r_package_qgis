% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_dailytohourlyevapotranspiration.R
\name{sagang_dailytohourlyevapotranspiration}
\alias{sagang_dailytohourlyevapotranspiration}
\title{QGIS algorithm - Daily to hourly evapotranspiration}
\usage{
sagang_dailytohourlyevapotranspiration(
  DAYS = qgisprocess:::qgis_default_value(),
  JD = qgisprocess:::qgis_default_value(),
  ET = qgisprocess:::qgis_default_value(),
  P = qgisprocess:::qgis_default_value(),
  HOURS = qgisprocess:::qgis_default_value(),
  LAT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DAYS}{\code{source} - Daily Data. Path to a vector layer.}

\item{JD}{\code{field} - Julian Day. The name of an existing field. ; delimited list of existing field names.}

\item{ET}{\code{field} - Evapotranspiration. The name of an existing field. ; delimited list of existing field names.}

\item{P}{\code{field} - Precipitation. The name of an existing field. ; delimited list of existing field names.}

\item{HOURS}{\code{vectorDestination} - Hourly Data. Path for new vector layer.}

\item{LAT}{\code{number} - Latitude. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Daily to hourly evapotranspiration (sagang:dailytohourlyevapotranspiration). ---------------- Arguments ----------------  DAYS: Daily Data 	Argument type:	source 	Acceptable values: 		- Path to a vector layer JD: Julian Day 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names ET: Evapotranspiration 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names P: Precipitation 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names HOURS: Hourly Data 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LAT: Latitude 	Default value:	53 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item HOURS - outputVector - Hourly Data
}
}
}
