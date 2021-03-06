% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_reclassifyvaluestable.R
\name{saga_reclassifyvaluestable}
\alias{saga_reclassifyvaluestable}
\title{QGIS algorithm Reclassify values (table)}
\usage{
saga_reclassifyvaluestable(
  INPUT = qgisprocess::qgis_default_value(),
  RETAB = qgisprocess::qgis_default_value(),
  TOPERATOR = qgisprocess::qgis_default_value(),
  NODATAOPT = qgisprocess::qgis_default_value(),
  NODATA = qgisprocess::qgis_default_value(),
  OTHEROPT = qgisprocess::qgis_default_value(),
  OTHERS = qgisprocess::qgis_default_value(),
  RESULT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{raster} - Grid. Path to a raster layer.}

\item{RETAB}{\code{matrix} - Lookup Table. A comma delimited list of values.}

\item{TOPERATOR}{\code{enum}  of \verb{("[0] min <= value < max", "[1] min <= value <= max", "[2] min < value <= max", "[3] min < value < max")} - operator (for table). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{NODATAOPT}{\code{boolean} - replace no data values. 1 for true/yes. 0 for false/no.}

\item{NODATA}{\code{number} - new value for no data values. A numeric value.}

\item{OTHEROPT}{\code{boolean} - replace other values. 1 for true/yes. 0 for false/no.}

\item{OTHERS}{\code{number} - new value for other values. A numeric value.}

\item{RESULT}{\code{rasterDestination} - Reclassified Grid. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Reclassify values (table) (saga:reclassifyvaluestable)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULT - outputRaster - Reclassified Grid
}
}
}
