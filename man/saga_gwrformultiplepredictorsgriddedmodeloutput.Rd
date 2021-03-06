% Generated by roxygen2: do not edit by hand
% Please edit documentation in
%   R/saga_gwrformultiplepredictorsgriddedmodeloutput.R
\name{saga_gwrformultiplepredictorsgriddedmodeloutput}
\alias{saga_gwrformultiplepredictorsgriddedmodeloutput}
\title{QGIS algorithm Gwr for multiple predictors (gridded model output)}
\usage{
saga_gwrformultiplepredictorsgriddedmodeloutput(
  POINTS = qgisprocess::qgis_default_value(),
  DEPENDENT = qgisprocess::qgis_default_value(),
  PREDICTORS = qgisprocess::qgis_default_value(),
  DW_WEIGHTING = qgisprocess::qgis_default_value(),
  DW_IDW_POWER = qgisprocess::qgis_default_value(),
  DW_IDW_OFFSET = qgisprocess::qgis_default_value(),
  DW_BANDWIDTH = qgisprocess::qgis_default_value(),
  SEARCH_RANGE = qgisprocess::qgis_default_value(),
  SEARCH_RADIUS = qgisprocess::qgis_default_value(),
  SEARCH_POINTS_ALL = qgisprocess::qgis_default_value(),
  SEARCH_POINTS_MIN = qgisprocess::qgis_default_value(),
  SEARCH_POINTS_MAX = qgisprocess::qgis_default_value(),
  SEARCH_DIRECTION = qgisprocess::qgis_default_value(),
 
    TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess::qgis_default_value(),
  TARGET_USER_SIZE = qgisprocess::qgis_default_value(),
  TARGET_USER_FITS = qgisprocess::qgis_default_value(),
  REGRESSION = qgisprocess::qgis_default_value(),
  SLOPES = qgisprocess::qgis_default_value(),
  TARGET_INTERCEPT = qgisprocess::qgis_default_value(),
  TARGET_QUALITY = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{POINTS}{\code{source} - Points. Path to a vector layer.}

\item{DEPENDENT}{\code{field} - Dependent Variable. The name of an existing field. ; delimited list of existing field names.}

\item{PREDICTORS}{\code{field} - Predictor. The name of an existing field. ; delimited list of existing field names.}

\item{DW_WEIGHTING}{\code{enum}  of \verb{("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")} - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DW_IDW_POWER}{\code{number} - Inverse Distance Weighting Power. A numeric value.}

\item{DW_IDW_OFFSET}{\code{boolean} - Inverse Distance Offset. 1 for true/yes. 0 for false/no.}

\item{DW_BANDWIDTH}{\code{number} - Gaussian and Exponential Weighting Bandwidth. A numeric value.}

\item{SEARCH_RANGE}{\code{enum}  of \verb{("[0] search radius (local)", "[1] no search radius (global)")} - Search Range. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{SEARCH_RADIUS}{\code{number} - Search Radius. A numeric value.}

\item{SEARCH_POINTS_ALL}{\code{enum}  of \verb{("[0] maximum number of nearest points", "[1] all points within search distance")} - Number of Points. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{SEARCH_POINTS_MIN}{\code{number} - Minimum. A numeric value.}

\item{SEARCH_POINTS_MAX}{\code{number} - Maximum. A numeric value.}

\item{SEARCH_DIRECTION}{\code{enum}  of \verb{("[0] all directions", "[1] quadrants")} - Search Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX}{\code{extent} - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.}

\item{TARGET_USER_SIZE}{\code{number} - Cellsize. A numeric value.}

\item{TARGET_USER_FITS}{\code{enum}  of \verb{("[0] nodes", "[1] cells")} - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{REGRESSION}{\code{vectorDestination} - Regression. Path for new vector layer.}

\item{SLOPES}{\code{rasterDestination} - Slopes. Path for new raster layer.}

\item{TARGET_INTERCEPT}{\code{rasterDestination} - Intercept. Path for new raster layer.}

\item{TARGET_QUALITY}{\code{rasterDestination} - Quality. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Gwr for multiple predictors (gridded model output) (saga:gwrformultiplepredictorsgriddedmodeloutput)
}
\details{
\subsection{Outputs description}{
\itemize{
\item REGRESSION - outputVector - Regression
\item SLOPES - outputRaster - Slopes
\item TARGET_INTERCEPT - outputRaster - Intercept
\item TARGET_QUALITY - outputRaster - Quality
}
}
}
