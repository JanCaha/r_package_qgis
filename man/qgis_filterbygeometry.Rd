% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_filterbygeometry.R
\name{qgis_filterbygeometry}
\alias{qgis_filterbygeometry}
\title{QGIS algorithm - Filter by geometry type}
\usage{
qgis_filterbygeometry(
  INPUT = qgisprocess:::qgis_default_value(),
  POINTS = qgisprocess:::qgis_default_value(),
  LINES = qgisprocess:::qgis_default_value(),
  POLYGONS = qgisprocess:::qgis_default_value(),
  NO_GEOMETRY = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{POINTS}{\code{sink} - Point features. Path for new vector layer.}

\item{LINES}{\code{sink} - Line features. Path for new vector layer.}

\item{POLYGONS}{\code{sink} - Polygon features. Path for new vector layer.}

\item{NO_GEOMETRY}{\code{sink} - Features with no geometry. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Filter by geometry type (native:filterbygeometry). Filters features by geometry type. This algorithm filters features by their geometry type. Incoming features will be directed to different outputs based on whether they have a point, line or polygon geometry.
}
\details{
\subsection{Outputs description}{
\itemize{
\item LINES - outputVector - Line features
\item LINE_COUNT - outputNumber - Total count of line features
\item NO_GEOMETRY - outputVector - Features with no geometry
\item NO_GEOMETRY_COUNT - outputNumber - Total count of features without geometry
\item POINTS - outputVector - Point features
\item POINT_COUNT - outputNumber - Total count of point features
\item POLYGONS - outputVector - Polygon features
\item POLYGON_COUNT - outputNumber - Total count of polygon features
}
}
}
