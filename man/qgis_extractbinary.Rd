% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_extractbinary.R
\name{qgis_extractbinary}
\alias{qgis_extractbinary}
\title{QGIS algorithm Extract binary field}
\usage{
qgis_extractbinary(
  INPUT = qgisprocess::qgis_default_value(),
  FIELD = qgisprocess::qgis_default_value(),
  FILENAME = qgisprocess::qgis_default_value(),
  FOLDER = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{FIELD}{\code{field} - Binary field. The name of an existing field. ; delimited list of existing field names.}

\item{FILENAME}{\code{expression} - File name. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.}

\item{FOLDER}{\code{folderDestination} - Destination folder. Path for an existing or new folder.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Extract binary field (native:extractbinary)
}
\details{
\subsection{Outputs description}{
\itemize{
\item FOLDER - outputFolder - Destination folder
}
}
}
