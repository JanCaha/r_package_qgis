% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_extractbyattribute.R
\name{qgis_extractbyattribute}
\alias{qgis_extractbyattribute}
\title{QGIS algorithm Extract by attribute}
\usage{
qgis_extractbyattribute(
  INPUT = qgisprocess::qgis_default_value(),
  FIELD = qgisprocess::qgis_default_value(),
  OPERATOR = qgisprocess::qgis_default_value(),
  VALUE = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  FAIL_OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Input layer. Path to a vector layer.}

\item{FIELD}{\code{field} - Selection attribute. The name of an existing field. ; delimited list of existing field names.}

\item{OPERATOR}{\code{enum}  of \verb{("=", "≠", ">", "≥", "<", "≤", "begins with", "contains", "is null", "is not null", "does not contain")} - Operator. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{VALUE}{\code{string} - Value. String value.}

\item{OUTPUT}{\code{sink} - Extracted (attribute). Path for new vector layer.}

\item{FAIL_OUTPUT}{\code{sink} - Extracted (non-matching). Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Extract by attribute (native:extractbyattribute)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Extracted
\item FAIL_OUTPUT - outputVector - Extracted
}
}
}
