% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_meshexporttimeseries.R
\name{qgis_meshexporttimeseries}
\alias{qgis_meshexporttimeseries}
\title{QGIS algorithm Export time series values from points of a mesh dataset}
\usage{
qgis_meshexporttimeseries(
  INPUT = qgisprocess::qgis_default_value(),
  DATASET_GROUPS = qgisprocess::qgis_default_value(),
  STARTING_TIME = qgisprocess::qgis_default_value(),
  FINISHING_TIME = qgisprocess::qgis_default_value(),
  TIME_STEP = qgisprocess::qgis_default_value(),
  INPUT_POINTS = qgisprocess::qgis_default_value(),
  COORDINATES_DIGITS = qgisprocess::qgis_default_value(),
  DATASET_DIGITS = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{mesh} - Input Mesh Layer. Path to a mesh layer.}

\item{DATASET_GROUPS}{\code{meshdatasetgroups} - Dataset groups. .}

\item{STARTING_TIME}{\code{meshdatasettime} - Starting time. .}

\item{FINISHING_TIME}{\code{meshdatasettime} - Finishing time. .}

\item{TIME_STEP}{\code{number} - Time step (hours). A numeric value.}

\item{INPUT_POINTS}{\code{source} - Points for data export. Path to a vector layer.}

\item{COORDINATES_DIGITS}{\code{number} - Digits count for coordinates. A numeric value.}

\item{DATASET_DIGITS}{\code{number} - Digits count for dataset value. A numeric value.}

\item{OUTPUT}{\code{fileDestination} - Exported data CSV file. Path for new file.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Export time series values from points of a mesh dataset (native:meshexporttimeseries)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputFile - Exported data CSV file
}
}
}
