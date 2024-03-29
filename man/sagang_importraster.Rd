% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_importraster.R
\name{sagang_importraster}
\alias{sagang_importraster}
\title{QGIS algorithm - Import raster}
\usage{
sagang_importraster(
  GRIDS = qgisprocess:::qgis_default_value(),
  FILES = qgisprocess:::qgis_default_value(),
  MULTIPLE = qgisprocess:::qgis_default_value(),
  SELECTION = qgisprocess:::qgis_default_value(),
  SELECT_SORT = qgisprocess:::qgis_default_value(),
  TRANSFORM = qgisprocess:::qgis_default_value(),
  RESAMPLING = qgisprocess:::qgis_default_value(),
  EXTENT = qgisprocess:::qgis_default_value(),
  EXTENT_XMIN = qgisprocess:::qgis_default_value(),
  EXTENT_XMAX = qgisprocess:::qgis_default_value(),
  EXTENT_YMIN = qgisprocess:::qgis_default_value(),
  EXTENT_YMAX = qgisprocess:::qgis_default_value(),
  EXTENT_SHAPES = qgisprocess:::qgis_default_value(),
  EXTENT_BUFFER = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{GRIDS}{\code{rasterDestination} - Grids. Path for new raster layer.}

\item{FILES}{\code{file} - Files. Path to a file.}

\item{MULTIPLE}{\code{enum}  of \verb{("(0) single grids", "(1) grid collection", "(2) automatic")} - Multiple Bands Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{SELECTION}{\code{string} - Select from Multiple Bands. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{SELECT_SORT}{\code{boolean} - Alphanumeric Sorting. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TRANSFORM}{\code{boolean} - Transformation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{RESAMPLING}{\code{enum}  of \verb{("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")} - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{EXTENT}{\code{enum}  of \verb{("(0) original", "(1) user defined", "(2) grid system", "(3) shapes extent")} - Extent. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{EXTENT_XMIN}{\code{number} - Left. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EXTENT_XMAX}{\code{number} - Right. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EXTENT_YMIN}{\code{number} - Bottom. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EXTENT_YMAX}{\code{number} - Top. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EXTENT_SHAPES}{\code{source} - Shapes Extent. Path to a vector layer.}

\item{EXTENT_BUFFER}{\code{number} - Buffer. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Import raster (sagang:importraster). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FILES: Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file MULTIPLE: Multiple Bands Output 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) single grids 		- 1: (1) grid collection 		- 2: (2) automatic 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SELECTION: Select from Multiple Bands 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SELECT_SORT: Alphanumeric Sorting 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TRANSFORM: Transformation 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RESAMPLING: Resampling 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EXTENT: Extent 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) original 		- 1: (1) user defined 		- 2: (2) grid system 		- 3: (3) shapes extent 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EXTENT_XMIN: Left 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENT_XMAX: Right 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENT_YMIN: Bottom 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENT_YMAX: Top 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENT_SHAPES: Shapes Extent 	Argument type:	source 	Acceptable values: 		- Path to a vector layer EXTENT_BUFFER: Buffer 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item GRIDS - outputRaster - Grids
}
}
}
