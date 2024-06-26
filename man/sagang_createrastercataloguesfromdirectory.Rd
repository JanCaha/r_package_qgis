% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_createrastercataloguesfromdirectory.R
\name{sagang_createrastercataloguesfromdirectory}
\alias{sagang_createrastercataloguesfromdirectory}
\title{QGIS algorithm - Create raster catalogues from directory}
\usage{
sagang_createrastercataloguesfromdirectory(
  CATALOGUES = qgisprocess:::qgis_default_value(),
  CATALOGUE_GCS = qgisprocess:::qgis_default_value(),
  CATALOGUE_UKN = qgisprocess:::qgis_default_value(),
  DIRECTORY = qgisprocess:::qgis_default_value(),
  EXTENSIONS = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{CATALOGUES}{\code{vectorDestination} - Raster Catalogues. Path for new vector layer.}

\item{CATALOGUE_GCS}{\code{vectorDestination} - Raster Catalogue. Path for new vector layer.}

\item{CATALOGUE_UKN}{\code{vectorDestination} - Raster Catalogue (unknown CRS). Path for new vector layer.}

\item{DIRECTORY}{\code{file} - Directory. Path to a file.}

\item{EXTENSIONS}{\code{string} - Extensions. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{enum}  of \verb{("(0) one catalogue for each coordinate system", "(1) one catalogue using geographic coordinates")} - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Create raster catalogues from directory (sagang:createrastercataloguesfromdirectory). ---------------- Arguments ----------------  CATALOGUES: Raster Catalogues 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CATALOGUE_GCS: Raster Catalogue 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CATALOGUE_UKN: Raster Catalogue (unknown CRS) 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DIRECTORY: Directory 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file EXTENSIONS: Extensions 	Default value:	sgrd; tif 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Output 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) one catalogue for each coordinate system 		- 1: (1) one catalogue using geographic coordinates 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
}
\details{
\subsection{Outputs description}{
\itemize{
\item CATALOGUES - outputVector - Raster Catalogues
\item CATALOGUE_GCS - outputVector - Raster Catalogue
\item CATALOGUE_UKN - outputVector - Raster Catalogue (unknown CRS)
}
}
}
