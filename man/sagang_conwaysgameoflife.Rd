% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_conwaysgameoflife.R
\name{sagang_conwaysgameoflife}
\alias{sagang_conwaysgameoflife}
\title{QGIS algorithm - Conway's game of life}
\usage{
sagang_conwaysgameoflife(
  TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX =
    qgisprocess:::qgis_default_value(),
  TARGET_USER_SIZE = qgisprocess:::qgis_default_value(),
  LIFE = qgisprocess:::qgis_default_value(),
  REFRESH = qgisprocess:::qgis_default_value(),
  FADECOLOR = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX}{\code{extent} - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.}

\item{TARGET_USER_SIZE}{\code{number} - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{LIFE}{\code{rasterDestination} - Life. Path for new raster layer.}

\item{REFRESH}{\code{enum}  of \verb{("(0) no refresh", "(1) random", "(2) virus 1", "(3) virus 2")} - Refresh. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{FADECOLOR}{\code{number} - Fade Color Count. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Conway's game of life (sagang:conwaysgameoflife). ---------------- Arguments ----------------  TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. TARGET_USER_SIZE: Cellsize 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LIFE: Life 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer REFRESH: Refresh 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) no refresh 		- 1: (1) random 		- 2: (2) virus 1 		- 3: (3) virus 2 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FADECOLOR: Fade Color Count 	Default value:	64 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item LIFE - outputRaster - Life
}
}
}
