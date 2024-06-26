% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_statisticsbycategories.R
\name{qgis_statisticsbycategories}
\alias{qgis_statisticsbycategories}
\title{QGIS algorithm - Statistics by categories}
\usage{
qgis_statisticsbycategories(
  INPUT = qgisprocess:::qgis_default_value(),
  VALUES_FIELD_NAME = qgisprocess:::qgis_default_value(),
  CATEGORIES_FIELD_NAME = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input vector layer. Path to a vector layer.}

\item{VALUES_FIELD_NAME}{\code{field} - Field to calculate statistics on (if empty, only count is calculated). The name of an existing field. ; delimited list of existing field names.}

\item{CATEGORIES_FIELD_NAME}{\code{field} - Field(s) with categories. The name of an existing field. ; delimited list of existing field names.}

\item{OUTPUT}{\code{sink} - Statistics by category. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS Statistics by categories (qgis:statisticsbycategories). This algorithm calculates statistics of fields depending on a parent class.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Statistics by category
}
}
}
