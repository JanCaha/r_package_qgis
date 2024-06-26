% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_exportscalablevectorgraphicssvgfile.R
\name{sagang_exportscalablevectorgraphicssvgfile}
\alias{sagang_exportscalablevectorgraphicssvgfile}
\title{QGIS algorithm - Export scalable vector graphics (svg) file}
\usage{
sagang_exportscalablevectorgraphicssvgfile(
  OUTPUT = qgisprocess:::qgis_default_value(),
  LAYERS = qgisprocess:::qgis_default_value(),
  LAYER = qgisprocess:::qgis_default_value(),
  FIELD = qgisprocess:::qgis_default_value(),
  FILE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{OUTPUT}{\code{enum}  of \verb{("(0) single layer", "(1) multiple layers")} - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{LAYERS}{\code{multilayer} - Layers. .}

\item{LAYER}{\code{source} - Layer. Path to a vector layer.}

\item{FIELD}{\code{field} - Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{FILE}{\code{file} - File. Path to a file.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Export scalable vector graphics (svg) file (sagang:exportscalablevectorgraphicssvgfile). ---------------- Arguments ----------------  OUTPUT: Output 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) single layer 		- 1: (1) multiple layers 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' LAYERS: Layers 	Argument type:	multilayer LAYER: Layer 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
}
\details{
\subsection{Outputs description}{

No output description provided.
}
}
