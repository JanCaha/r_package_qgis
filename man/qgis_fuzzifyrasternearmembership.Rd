% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_fuzzifyrasternearmembership.R
\name{qgis_fuzzifyrasternearmembership}
\alias{qgis_fuzzifyrasternearmembership}
\title{QGIS algorithm - Fuzzify raster (near membership)}
\usage{
qgis_fuzzifyrasternearmembership(
  INPUT = qgisprocess:::qgis_default_value(),
  BAND = qgisprocess:::qgis_default_value(),
  FUZZYMIDPOINT = qgisprocess:::qgis_default_value(),
  FUZZYSPREAD = qgisprocess:::qgis_default_value(),
  CREATION_OPTIONS = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{raster} - Input Raster. Path to a raster layer.}

\item{BAND}{\code{band} - Band Number. Integer value representing an existing raster band number.}

\item{FUZZYMIDPOINT}{\code{number} - Function midpoint. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{FUZZYSPREAD}{\code{number} - Function spread. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CREATION_OPTIONS}{\code{string} - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{rasterDestination} - Fuzzified raster. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Fuzzify raster (near membership) (native:fuzzifyrasternearmembership). Transforms an input raster to a fuzzified raster where values range from 0 to 1 following the 'near' fuzzy membership function. The Fuzzify raster (near membership) algorithm transforms an input raster to a fuzzified raster and thereby assigns values between 0 and 1 following the 'near' fuzzy membership function. The value of 0 implies no membership with the defined fuzzy set, a value of 1 depicts full membership. In between, the degree of membership of raster values follows the 'near' membership function.  The 'near' function is constructed using two user-defined input values which set the midpoint of the 'near' function (midpoint, results to 1) and a predefined function spread which controls the function spread.  This function is typically used when a certain range of raster values near a predefined function midpoint should become members of the fuzzy set. The function generally shows a higher rate of decay than the gaussian membership function.
}
\details{
\subsection{Outputs description}{
\itemize{
\item CRS_AUTHID - outputString - CRS authority identifier
\item EXTENT - outputString - Extent
\item HEIGHT_IN_PIXELS - outputNumber - Height in pixels
\item OUTPUT - outputRaster - Fuzzified raster
\item TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
\item WIDTH_IN_PIXELS - outputNumber - Width in pixels
}
}
}
