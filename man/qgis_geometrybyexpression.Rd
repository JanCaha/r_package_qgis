% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_geometrybyexpression.R
\name{qgis_geometrybyexpression}
\alias{qgis_geometrybyexpression}
\title{QGIS algorithm - Geometry by expression}
\usage{
qgis_geometrybyexpression(
  INPUT = qgisprocess:::qgis_default_value(),
  OUTPUT_GEOMETRY = qgisprocess:::qgis_default_value(),
  WITH_Z = qgisprocess:::qgis_default_value(),
  WITH_M = qgisprocess:::qgis_default_value(),
  EXPRESSION = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{OUTPUT_GEOMETRY}{\code{enum}  of \verb{("Polygon", "Line", "Point")} - Output geometry type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{WITH_Z}{\code{boolean} - Output geometry has z dimension. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{WITH_M}{\code{boolean} - Output geometry has m values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EXPRESSION}{\code{expression} - Geometry expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.}

\item{OUTPUT}{\code{sink} - Modified geometry. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Geometry by expression (native:geometrybyexpression). Updates existing geometries (or creates new geometries) for input features by use of a QGIS expression. This algorithm updates existing geometries (or creates new geometries) for input features by use of a QGIS expression. This allows complex geometry modifications which can utilize all the flexibility of the QGIS expression engine to manipulate and create geometries for output features.  For help with QGIS expression functions, see the inbuilt help for specific functions which is available in the expression builder.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Modified geometry
}
}
}
