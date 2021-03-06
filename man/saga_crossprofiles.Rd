% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_crossprofiles.R
\name{saga_crossprofiles}
\alias{saga_crossprofiles}
\title{QGIS algorithm Cross profiles}
\usage{
saga_crossprofiles(
  DEM = qgisprocess::qgis_default_value(),
  LINES = qgisprocess::qgis_default_value(),
  DIST_LINE = qgisprocess::qgis_default_value(),
  DIST_PROFILE = qgisprocess::qgis_default_value(),
  NUM_PROFILE = qgisprocess::qgis_default_value(),
  PROFILES = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{DEM}{\code{raster} - DEM. Path to a raster layer.}

\item{LINES}{\code{source} - Lines. Path to a vector layer.}

\item{DIST_LINE}{\code{number} - Profile Distance. A numeric value.}

\item{DIST_PROFILE}{\code{number} - Profile Length. A numeric value.}

\item{NUM_PROFILE}{\code{number} - Profile Samples. A numeric value.}

\item{PROFILES}{\code{vectorDestination} - Cross Profiles. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Cross profiles (saga:crossprofiles)
}
\details{
\subsection{Outputs description}{
\itemize{
\item PROFILES - outputVector - Cross Profiles
}
}
}
