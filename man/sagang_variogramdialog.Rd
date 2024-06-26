% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_variogramdialog.R
\name{sagang_variogramdialog}
\alias{sagang_variogramdialog}
\title{QGIS algorithm - Variogram (dialog)}
\usage{
sagang_variogramdialog(
  POINTS = qgisprocess:::qgis_default_value(),
  ATTRIBUTE = qgisprocess:::qgis_default_value(),
  VARIOGRAM = qgisprocess:::qgis_default_value(),
  LOG = qgisprocess:::qgis_default_value(),
  VAR_MAXDIST = qgisprocess:::qgis_default_value(),
  VAR_NCLASSES = qgisprocess:::qgis_default_value(),
  VAR_NSKIP = qgisprocess:::qgis_default_value(),
  VAR_MODEL = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{POINTS}{\code{source} - Points. Path to a vector layer.}

\item{ATTRIBUTE}{\code{field} - Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{VARIOGRAM}{\code{vectorDestination} - Variogram. Path for new vector layer.}

\item{LOG}{\code{boolean} - Logarithmic Transformation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{VAR_MAXDIST}{\code{number} - Maximum Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{VAR_NCLASSES}{\code{number} - Lag Distance Classes. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{VAR_NSKIP}{\code{number} - Skip. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{VAR_MODEL}{\code{string} - Model. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Variogram (dialog) (sagang:variogramdialog). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ATTRIBUTE: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names VARIOGRAM: Variogram 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LOG: Logarithmic Transformation 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VAR_MAXDIST: Maximum Distance 	Default value:	-1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VAR_NCLASSES: Lag Distance Classes 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VAR_NSKIP: Skip 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VAR_MODEL: Model 	Default value:	a + b * x 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item VARIOGRAM - outputVector - Variogram
}
}
}
