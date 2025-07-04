% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_polygonfromlayerextent.R
\name{qgis_polygonfromlayerextent}
\alias{qgis_polygonfromlayerextent}
\title{QGIS algorithm - Extract layer extent}
\usage{
qgis_polygonfromlayerextent(
  INPUT = qgisprocess:::qgis_default_value(),
  ROUND_TO = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{layer} - Input layer. Path to a vector, raster or mesh layer.}

\item{ROUND_TO}{\code{distance} - Round values to. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{sink} - Extent. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Extract layer extent (native:polygonfromlayerextent). Generates a vector layer with the minimum bounding box that covers the input layer. This algorithm takes a map layer and generates a new vector layer with the minimum bounding box (rectangle polygon with N-S orientation) that covers the input layer. Optionally, the extent can be enlarged to a rounded value.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Extent
}
}
}
