% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_importtexttables.R
\name{sagang_importtexttables}
\alias{sagang_importtexttables}
\title{QGIS algorithm - Import text tables}
\usage{
sagang_importtexttables(
  TABLES = qgisprocess:::qgis_default_value(),
  FILES = qgisprocess:::qgis_default_value(),
  HEADLINE = qgisprocess:::qgis_default_value(),
  SEPARATOR = qgisprocess:::qgis_default_value(),
  SEP_OTHER = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{TABLES}{\code{vectorDestination} - Tables. Path for new vector layer.}

\item{FILES}{\code{file} - Files. Path to a file.}

\item{HEADLINE}{\code{boolean} - Headline. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{SEPARATOR}{\code{enum}  of \verb{("(0) tabulator", "(1) ", "", "(2) ,", "(3) space", "(4) other")} - Separator. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{SEP_OTHER}{\code{string} - Separator (other). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Import text tables (sagang:importtexttables). ---------------- Arguments ----------------  TABLES: Tables 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILES: Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file HEADLINE: Headline 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SEPARATOR: Separator 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) tabulator 		- 1: (1)  		- 2:  		- 3: (2) , 		- 4: (3) space 		- 5: (4) other 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SEP_OTHER: Separator (other) 	Default value:	* 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item TABLES - outputVector - Tables
}
}
}
