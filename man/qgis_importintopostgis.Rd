% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_importintopostgis.R
\name{qgis_importintopostgis}
\alias{qgis_importintopostgis}
\title{QGIS algorithm - Export to PostgreSQL}
\usage{
qgis_importintopostgis(
  INPUT = qgisprocess:::qgis_default_value(),
  DATABASE = qgisprocess:::qgis_default_value(),
  SCHEMA = qgisprocess:::qgis_default_value(),
  TABLENAME = qgisprocess:::qgis_default_value(),
  PRIMARY_KEY = qgisprocess:::qgis_default_value(),
  GEOMETRY_COLUMN = qgisprocess:::qgis_default_value(),
  ENCODING = qgisprocess:::qgis_default_value(),
  OVERWRITE = qgisprocess:::qgis_default_value(),
  CREATEINDEX = qgisprocess:::qgis_default_value(),
  LOWERCASE_NAMES = qgisprocess:::qgis_default_value(),
  DROP_STRING_LENGTH = qgisprocess:::qgis_default_value(),
  FORCE_SINGLEPART = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{source} - Layer to export. Path to a vector layer.}

\item{DATABASE}{\code{providerconnection} - Database (connection name). Name of registered database connection.}

\item{SCHEMA}{\code{databaseschema} - Schema (schema name). Name of existing database schema.}

\item{TABLENAME}{\code{databasetable} - Table to export to (leave blank to use layer name). Name of existing database table.}

\item{PRIMARY_KEY}{\code{field} - Primary key field. The name of an existing field. ; delimited list of existing field names.}

\item{GEOMETRY_COLUMN}{\code{string} - Geometry column. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{ENCODING}{\code{string} - Encoding. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OVERWRITE}{\code{boolean} - Overwrite. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CREATEINDEX}{\code{boolean} - Create spatial index. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{LOWERCASE_NAMES}{\code{boolean} - Convert field names to lowercase. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{DROP_STRING_LENGTH}{\code{boolean} - Drop length constraints on character fields. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{FORCE_SINGLEPART}{\code{boolean} - Create single-part geometries instead of multipart. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Export to PostgreSQL (native:importintopostgis). Exports a vector layer to a PostgreSQL database. This algorithm exports a vector layer to a PostgreSQL database, creating a new table.  Prior to this a connection between QGIS and the PostgreSQL database has to be created (for example through the QGIS Browser panel).
}
\details{
\subsection{Outputs description}{

No output description provided.
}
}
