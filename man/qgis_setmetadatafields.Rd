% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_setmetadatafields.R
\name{qgis_setmetadatafields}
\alias{qgis_setmetadatafields}
\title{QGIS algorithm - Set metadata fields}
\usage{
qgis_setmetadatafields(
  INPUT = qgisprocess:::qgis_default_value(),
  IDENTIFIER = qgisprocess:::qgis_default_value(),
  PARENT_IDENTIFIER = qgisprocess:::qgis_default_value(),
  TITLE = qgisprocess:::qgis_default_value(),
  TYPE = qgisprocess:::qgis_default_value(),
  LANGUAGE = qgisprocess:::qgis_default_value(),
  ENCODING = qgisprocess:::qgis_default_value(),
  ABSTRACT = qgisprocess:::qgis_default_value(),
  CRS = qgisprocess:::qgis_default_value(),
  FEES = qgisprocess:::qgis_default_value(),
  IGNORE_EMPTY = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{layer} - Layer. Path to a vector, raster or mesh layer.}

\item{IDENTIFIER}{\code{string} - Identifier. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{PARENT_IDENTIFIER}{\code{string} - Parent identifier. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TITLE}{\code{string} - Title. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TYPE}{\code{string} - Type. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{LANGUAGE}{\code{string} - Language. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{ENCODING}{\code{string} - Encoding. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{ABSTRACT}{\code{string} - Abstract. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CRS}{\code{crs} - Coordinate reference system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..}

\item{FEES}{\code{string} - Fees. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{IGNORE_EMPTY}{\code{boolean} - Ignore empty fields. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Set metadata fields (native:setmetadatafields). Sets various metadata fields for a layer. This algorithm sets various metadata fields for a layer.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputLayer - Updated
}
}
}
