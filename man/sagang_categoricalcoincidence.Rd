% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_categoricalcoincidence.R
\name{sagang_categoricalcoincidence}
\alias{sagang_categoricalcoincidence}
\title{QGIS algorithm - Categorical coincidence}
\usage{
sagang_categoricalcoincidence(
  GRIDS = qgisprocess:::qgis_default_value(),
  CATEGORIES = qgisprocess:::qgis_default_value(),
  COINCIDENCE = qgisprocess:::qgis_default_value(),
  MAJ_COUNT = qgisprocess:::qgis_default_value(),
  MAJ_VALUE = qgisprocess:::qgis_default_value(),
  RADIUS = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{GRIDS}{\code{multilayer} - Grids. .}

\item{CATEGORIES}{\code{rasterDestination} - Number of Categories. Path for new raster layer.}

\item{COINCIDENCE}{\code{rasterDestination} - Coincidence. Path for new raster layer.}

\item{MAJ_COUNT}{\code{rasterDestination} - Dominance of Majority. Path for new raster layer.}

\item{MAJ_VALUE}{\code{rasterDestination} - Value of Majority. Path for new raster layer.}

\item{RADIUS}{\code{number} - Radius (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Categorical coincidence (sagang:categoricalcoincidence). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer CATEGORIES: Number of Categories 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer COINCIDENCE: Coincidence 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAJ_COUNT: Dominance of Majority 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAJ_VALUE: Value of Majority 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RADIUS: Radius (Cells) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item CATEGORIES - outputRaster - Number of Categories
\item COINCIDENCE - outputRaster - Coincidence
\item MAJ_COUNT - outputRaster - Dominance of Majority
\item MAJ_VALUE - outputRaster - Value of Majority
}
}
}
