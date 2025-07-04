% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_exporttospreadsheet.R
\name{qgis_exporttospreadsheet}
\alias{qgis_exporttospreadsheet}
\title{QGIS algorithm - Export to spreadsheet}
\usage{
qgis_exporttospreadsheet(
  LAYERS = qgisprocess:::qgis_default_value(),
  USE_ALIAS = qgisprocess:::qgis_default_value(),
  FORMATTED_VALUES = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  OVERWRITE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{LAYERS}{\code{multilayer} - Input layers. .}

\item{USE_ALIAS}{\code{boolean} - Use field aliases as column headings. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{FORMATTED_VALUES}{\code{boolean} - Export formatted values instead of raw values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{fileDestination} - Destination spreadsheet. Path for new file.}

\item{OVERWRITE}{\code{boolean} - Overwrite existing spreadsheet. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Export to spreadsheet (native:exporttospreadsheet). Collects a number of existing layers and exports them to a spreadsheet document. This algorithm collects a number of existing layers and exports them to a spreadsheet document.  Optionally the layers can be appended to an existing spreadsheet as additional sheets.
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputFile - Destination spreadsheet
\item OUTPUT_LAYERS - outputMultilayer - Layers within spreadsheet
}
}
}
