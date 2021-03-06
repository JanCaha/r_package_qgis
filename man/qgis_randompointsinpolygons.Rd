% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_randompointsinpolygons.R
\name{qgis_randompointsinpolygons}
\alias{qgis_randompointsinpolygons}
\title{QGIS algorithm Random points in polygons}
\usage{
qgis_randompointsinpolygons(
  INPUT = qgisprocess::qgis_default_value(),
  POINTS_NUMBER = qgisprocess::qgis_default_value(),
  MIN_DISTANCE = qgisprocess::qgis_default_value(),
  MIN_DISTANCE_GLOBAL = qgisprocess::qgis_default_value(),
  MAX_TRIES_PER_POINT = qgisprocess::qgis_default_value(),
  SEED = qgisprocess::qgis_default_value(),
  INCLUDE_POLYGON_ATTRIBUTES = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Input polygon layer. Path to a vector layer.}

\item{POINTS_NUMBER}{\code{number} - Number of points for each feature. A numeric value.}

\item{MIN_DISTANCE}{\code{distance} - Minimum distance between points. A numeric value.}

\item{MIN_DISTANCE_GLOBAL}{\code{distance} - Global minimum distance between points. A numeric value.}

\item{MAX_TRIES_PER_POINT}{\code{number} - Maximum number of search attempts (for Min. dist.  0). A numeric value.}

\item{SEED}{\code{number} - Random seed. A numeric value.}

\item{INCLUDE_POLYGON_ATTRIBUTES}{\code{boolean} - Include polygon attributes. 1 for true/yes. 0 for false/no.}

\item{OUTPUT}{\code{sink} - Random points in polygons. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Random points in polygons (native:randompointsinpolygons)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Random points in polygons
\item OUTPUT_POINTS - outputNumber - Total number of points generated
\item POINTS_MISSED - outputNumber - Number of missed points
\item POLYGONS_WITH_MISSED_POINTS - outputNumber - Number of polygons with missed points
\item FEATURES_WITH_EMPTY_OR_NO_GEOMETRY - outputNumber - Number of features with empty or no geometry
}
}
}
