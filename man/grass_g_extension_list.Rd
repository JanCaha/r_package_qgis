% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass_g_extension_list.R
\name{grass_g_extension_list}
\alias{grass_g_extension_list}
\title{QGIS algorithm - g.extension.list}
\usage{
grass_g_extension_list(
  list = qgisprocess:::qgis_default_value(),
  html = qgisprocess:::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{list}{\code{enum}  of \verb{("Locally installed extensions", "Extensions available in the official GRASS GIS Addons repository", "Extensions available in the official GRASS GIS Addons repository including module description")} - List. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{html}{\code{fileDestination} - List of addons. Path for new file.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS g.extension.list (grass:g.extension.list). g.extension.list - List GRASS addons.
}
\details{
\subsection{Outputs description}{
\itemize{
\item html - outputHtml - List of addons
}
}
}
