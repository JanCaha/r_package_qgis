% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_localclimatezoneclassification.R
\name{sagang_localclimatezoneclassification}
\alias{sagang_localclimatezoneclassification}
\title{QGIS algorithm - Local climate zone classification}
\usage{
sagang_localclimatezoneclassification(
  FEATURES = qgisprocess:::qgis_default_value(),
  GRIDDEFILE = qgisprocess:::qgis_default_value(),
  FILE_TRAINING = qgisprocess:::qgis_default_value(),
  RF_TREE_COUNT = qgisprocess:::qgis_default_value(),
  CLASS_DEF_SRC = qgisprocess:::qgis_default_value(),
  CLASS_DEF_FILE = qgisprocess:::qgis_default_value(),
  LCZC = qgisprocess:::qgis_default_value(),
  LCZC_FILE = qgisprocess:::qgis_default_value(),
  LCZC_FILTERED = qgisprocess:::qgis_default_value(),
  FILE_FILTERED_LCZC = qgisprocess:::qgis_default_value(),
  FILTER_RADIUS = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{FEATURES}{\code{multilayer} - Features. .}

\item{GRIDDEFILE}{\code{file} - grid definition for KML2shp conversion. Path to a file.}

\item{FILE_TRAINING}{\code{file} - Training Areas. Path to a file.}

\item{RF_TREE_COUNT}{\code{number} - Random Forest Tree Count. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CLASS_DEF_SRC}{\code{enum}  of \verb{("(0) built-in", "(1) from file")} - Class Definition. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{CLASS_DEF_FILE}{\code{file} - Class Definition File. Path to a file.}

\item{LCZC}{\code{rasterDestination} - LCZC. Path for new raster layer.}

\item{LCZC_FILE}{\code{file} - KMZ File. Path to a file.}

\item{LCZC_FILTERED}{\code{rasterDestination} - LCZC (Filtered). Path for new raster layer.}

\item{FILE_FILTERED_LCZC}{\code{file} - KMZ File. Path to a file.}

\item{FILTER_RADIUS}{\code{number} - Majority Filter Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Local climate zone classification (sagang:localclimatezoneclassification). ---------------- Arguments ----------------  FEATURES: Features 	Argument type:	multilayer GRIDDEFILE: grid definition for KML2shp conversion 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FILE_TRAINING: Training Areas 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file RF_TREE_COUNT: Random Forest Tree Count 	Default value:	32 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CLASS_DEF_SRC: Class Definition 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) built-in 		- 1: (1) from file 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CLASS_DEF_FILE: Class Definition File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file LCZC: LCZC 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LCZC_FILE: KMZ File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file LCZC_FILTERED: LCZC (Filtered) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FILE_FILTERED_LCZC: KMZ File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FILTER_RADIUS: Majority Filter Radius 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item LCZC - outputRaster - LCZC
\item LCZC_FILTERED - outputRaster - LCZC (Filtered)
}
}
}
