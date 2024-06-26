% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_splitshapeslayerrandomly.R
\name{sagang_splitshapeslayerrandomly}
\alias{sagang_splitshapeslayerrandomly}
\title{QGIS algorithm - Split shapes layer randomly}
\usage{
sagang_splitshapeslayerrandomly(
  SHAPES = qgisprocess:::qgis_default_value(),
  FIELD = qgisprocess:::qgis_default_value(),
  A = qgisprocess:::qgis_default_value(),
  B = qgisprocess:::qgis_default_value(),
  PERCENT = qgisprocess:::qgis_default_value(),
  EXACT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{SHAPES}{\code{source} - Shapes. Path to a vector layer.}

\item{FIELD}{\code{field} - Categories. The name of an existing field. ; delimited list of existing field names.}

\item{A}{\code{vectorDestination} - Group A. Path for new vector layer.}

\item{B}{\code{vectorDestination} - Group B. Path for new vector layer.}

\item{PERCENT}{\code{number} - Relation B \code{/} A. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EXACT}{\code{boolean} - Exact. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Split shapes layer randomly (sagang:splitshapeslayerrandomly). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Categories 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names A: Group A 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer B: Group B 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer PERCENT: Relation B / A 	Default value:	25 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXACT: Exact 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item A - outputVector - Group A
\item B - outputVector - Group B
}
}
}
