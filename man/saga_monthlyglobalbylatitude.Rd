% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_monthlyglobalbylatitude.R
\name{saga_monthlyglobalbylatitude}
\alias{saga_monthlyglobalbylatitude}
\title{QGIS algorithm Monthly global by latitude}
\usage{
saga_monthlyglobalbylatitude(
  ALBEDO = qgisprocess::qgis_default_value(),
  FIELD = qgisprocess::qgis_default_value(),
  YEAR = qgisprocess::qgis_default_value(),
  DLAT = qgisprocess::qgis_default_value(),
  SOLARRAD = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{ALBEDO}{\code{source} - Albedo. Path to a vector layer.}

\item{FIELD}{\code{field} - Field. The name of an existing field. ; delimited list of existing field names.}

\item{YEAR}{\code{number} - Year (ka). A numeric value.}

\item{DLAT}{\code{number} - Latitude Increment (Degree). A numeric value.}

\item{SOLARRAD}{\code{vectorDestination} - Solar Radiation. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Monthly global by latitude (saga:monthlyglobalbylatitude)
}
\details{
\subsection{Outputs description}{
\itemize{
\item SOLARRAD - outputVector - Solar Radiation
}
}
}
