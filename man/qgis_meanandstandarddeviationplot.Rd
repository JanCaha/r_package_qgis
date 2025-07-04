% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_meanandstandarddeviationplot.R
\name{qgis_meanandstandarddeviationplot}
\alias{qgis_meanandstandarddeviationplot}
\title{QGIS algorithm - Mean and standard deviation plot}
\usage{
qgis_meanandstandarddeviationplot(
  INPUT = qgisprocess:::qgis_default_value(),
  NAME_FIELD = qgisprocess:::qgis_default_value(),
  VALUE_FIELD = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input table. Path to a vector layer.}

\item{NAME_FIELD}{\code{field} - Category name field. The name of an existing field. ; delimited list of existing field names.}

\item{VALUE_FIELD}{\code{field} - Value field. The name of an existing field. ; delimited list of existing field names.}

\item{OUTPUT}{\code{fileDestination} - Plot. Path for new file.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS Mean and standard deviation plot (qgis:meanandstandarddeviationplot). Creates a box plot with mean and standard deviation values. This algorithm creates a box plot with mean and standard deviation values.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputHtml - Plot
}
}
}
