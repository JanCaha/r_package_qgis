% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_clusteranalysisshapes.R
\name{saga_clusteranalysisshapes}
\alias{saga_clusteranalysisshapes}
\title{QGIS algorithm Cluster analysis (shapes)}
\usage{
saga_clusteranalysisshapes(
  INPUT = qgisprocess::qgis_default_value(),
  RESULT = qgisprocess::qgis_default_value(),
  FIELDS = qgisprocess::qgis_default_value(),
  CLUSTER = qgisprocess::qgis_default_value(),
  STATISTICS = qgisprocess::qgis_default_value(),
  METHOD = qgisprocess::qgis_default_value(),
  NCLUSTER = qgisprocess::qgis_default_value(),
  NORMALISE = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{source} - Shapes. Path to a vector layer.}

\item{RESULT}{\code{vectorDestination} - Result. Path for new vector layer.}

\item{FIELDS}{\code{field} - Attributes. The name of an existing field. ; delimited list of existing field names.}

\item{CLUSTER}{\code{field} - Cluster. The name of an existing field. ; delimited list of existing field names.}

\item{STATISTICS}{\code{vectorDestination} - Result. Path for new vector layer.}

\item{METHOD}{\code{enum}  of \verb{("[0] Iterative Minimum Distance (Forgy 1965)", "[1] Hill-Climbing (Rubin 1967)", "[2] Combined Minimum Distance / Hillclimbing")} - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{NCLUSTER}{\code{number} - Clusters. A numeric value.}

\item{NORMALISE}{\code{boolean} - Normalise. 1 for true/yes. 0 for false/no.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Cluster analysis (shapes) (saga:clusteranalysisshapes)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULT - outputVector - Result
\item STATISTICS - outputVector - Result
}
}
}
