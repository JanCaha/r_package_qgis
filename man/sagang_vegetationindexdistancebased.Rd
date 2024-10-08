% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_vegetationindexdistancebased.R
\name{sagang_vegetationindexdistancebased}
\alias{sagang_vegetationindexdistancebased}
\title{QGIS algorithm - Vegetation index (distance based)}
\usage{
sagang_vegetationindexdistancebased(
  RED = qgisprocess:::qgis_default_value(),
  NIR = qgisprocess:::qgis_default_value(),
  PVI0 = qgisprocess:::qgis_default_value(),
  PVI1 = qgisprocess:::qgis_default_value(),
  PVI2 = qgisprocess:::qgis_default_value(),
  PVI3 = qgisprocess:::qgis_default_value(),
  TSAVI = qgisprocess:::qgis_default_value(),
  ATSAVI = qgisprocess:::qgis_default_value(),
  INTERCEPT = qgisprocess:::qgis_default_value(),
  SLOPE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{RED}{\code{raster} - Red Reflectance. Path to a raster layer.}

\item{NIR}{\code{raster} - Near Infrared Reflectance. Path to a raster layer.}

\item{PVI0}{\code{rasterDestination} - Perpendicular Vegetation Index (Richardson and Wiegand, 1977). Path for new raster layer.}

\item{PVI1}{\code{rasterDestination} - Perpendicular Vegetation Index (Perry and Lautenschlager, 1984). Path for new raster layer.}

\item{PVI2}{\code{rasterDestination} - Perpendicular Vegetation Index (Walther and Shabaani). Path for new raster layer.}

\item{PVI3}{\code{rasterDestination} - Perpendicular Vegetation Index (Qi, et al., 1994). Path for new raster layer.}

\item{TSAVI}{\code{rasterDestination} - Transformed Soil Adjusted Vegetation Index (Baret et al. 1989). Path for new raster layer.}

\item{ATSAVI}{\code{rasterDestination} - Transformed Soil Adjusted Vegetation Index (Baret and Guyot, 1991). Path for new raster layer.}

\item{INTERCEPT}{\code{number} - Intercept of Soil Line. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{SLOPE}{\code{number} - Slope of Soil Line. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Vegetation index (distance based) (sagang:vegetationindexdistancebased). ---------------- Arguments ----------------  RED: Red Reflectance 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NIR: Near Infrared Reflectance 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PVI0: Perpendicular Vegetation Index (Richardson and Wiegand, 1977) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PVI1: Perpendicular Vegetation Index (Perry and Lautenschlager, 1984) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PVI2: Perpendicular Vegetation Index (Walther and Shabaani) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PVI3: Perpendicular Vegetation Index (Qi, et al., 1994) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TSAVI: Transformed Soil Adjusted Vegetation Index (Baret et al. 1989) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ATSAVI: Transformed Soil Adjusted Vegetation Index (Baret and Guyot, 1991) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INTERCEPT: Intercept of Soil Line 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SLOPE: Slope of Soil Line 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item ATSAVI - outputRaster - Transformed Soil Adjusted Vegetation Index (Baret and Guyot, 1991)
\item PVI0 - outputRaster - Perpendicular Vegetation Index (Richardson and Wiegand, 1977)
\item PVI1 - outputRaster - Perpendicular Vegetation Index (Perry and Lautenschlager, 1984)
\item PVI2 - outputRaster - Perpendicular Vegetation Index (Walther and Shabaani)
\item PVI3 - outputRaster - Perpendicular Vegetation Index (Qi, et al., 1994)
\item TSAVI - outputRaster - Transformed Soil Adjusted Vegetation Index (Baret et al. 1989)
}
}
}
