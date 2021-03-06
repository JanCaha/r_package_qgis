% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_randomforestpresencepredictionvigra.R
\name{saga_randomforestpresencepredictionvigra}
\alias{saga_randomforestpresencepredictionvigra}
\title{QGIS algorithm Random forest presence prediction (vigra)}
\usage{
saga_randomforestpresencepredictionvigra(
  FEATURES = qgisprocess::qgis_default_value(),
  PREDICTION = qgisprocess::qgis_default_value(),
  PROBABILITY = qgisprocess::qgis_default_value(),
  PRESENCE = qgisprocess::qgis_default_value(),
  BACKGROUND = qgisprocess::qgis_default_value(),
  DO_MRMR = qgisprocess::qgis_default_value(),
  mRMR_NFEATURES = qgisprocess::qgis_default_value(),
  mRMR_DISCRETIZE = qgisprocess::qgis_default_value(),
  mRMR_THRESHOLD = qgisprocess::qgis_default_value(),
  mRMR_METHOD = qgisprocess::qgis_default_value(),
  RF_IMPORT = qgisprocess::qgis_default_value(),
  RF_EXPORT = qgisprocess::qgis_default_value(),
  RF_TREE_COUNT = qgisprocess::qgis_default_value(),
  RF_TREE_SAMPLES = qgisprocess::qgis_default_value(),
  RF_REPLACE = qgisprocess::qgis_default_value(),
  RF_SPLIT_MIN_SIZE = qgisprocess::qgis_default_value(),
  RF_NODE_FEATURES = qgisprocess::qgis_default_value(),
  RF_STRATIFICATION = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{FEATURES}{\code{multilayer} - Features. .}

\item{PREDICTION}{\code{rasterDestination} - Presence Prediction. Path for new raster layer.}

\item{PROBABILITY}{\code{rasterDestination} - Presence Probability. Path for new raster layer.}

\item{PRESENCE}{\code{source} - Presence Data. Path to a vector layer.}

\item{BACKGROUND}{\code{number} - Background Sample Density (Percent). A numeric value.}

\item{DO_MRMR}{\code{boolean} - Minimum Redundancy Feature Selection. 1 for true/yes. 0 for false/no.}

\item{mRMR_NFEATURES}{\code{number} - Number of Features. A numeric value.}

\item{mRMR_DISCRETIZE}{\code{boolean} - Discretization. 1 for true/yes. 0 for false/no.}

\item{mRMR_THRESHOLD}{\code{number} - Discretization Threshold. A numeric value.}

\item{mRMR_METHOD}{\code{enum}  of \verb{("[0] Mutual Information Difference (MID)", "[1] Mutual Information Quotient (MIQ)")} - Selection Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{RF_IMPORT}{\code{file} - Import from File. Path to a file.}

\item{RF_EXPORT}{\code{file} - Export to File. Path to a file.}

\item{RF_TREE_COUNT}{\code{number} - Tree Count. A numeric value.}

\item{RF_TREE_SAMPLES}{\code{number} - Samples per Tree. A numeric value.}

\item{RF_REPLACE}{\code{boolean} - Sample with Replacement. 1 for true/yes. 0 for false/no.}

\item{RF_SPLIT_MIN_SIZE}{\code{number} - Minimum Node Split Size. A numeric value.}

\item{RF_NODE_FEATURES}{\code{enum}  of \verb{("[0] logarithmic", "[1] square root", "[2] all")} - Features per Node. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{RF_STRATIFICATION}{\code{enum}  of \verb{("[0] none", "[1] equal", "[2] proportional")} - Stratification. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Random forest presence prediction (vigra) (saga:randomforestpresencepredictionvigra)
}
\details{
\subsection{Outputs description}{
\itemize{
\item PREDICTION - outputRaster - Presence Prediction
\item PROBABILITY - outputRaster - Presence Probability
}
}
}
