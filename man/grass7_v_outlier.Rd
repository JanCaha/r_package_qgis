% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_v_outlier.R
\name{grass7_v_outlier}
\alias{grass7_v_outlier}
\title{QGIS algorithm v.outlier}
\usage{
grass7_v_outlier(
  input = qgisprocess::qgis_default_value(),
  ew_step = qgisprocess::qgis_default_value(),
  ns_step = qgisprocess::qgis_default_value(),
  lambda = qgisprocess::qgis_default_value(),
  threshold = qgisprocess::qgis_default_value(),
  filter = qgisprocess::qgis_default_value(),
  .e = qgisprocess::qgis_default_value(),
  output = qgisprocess::qgis_default_value(),
  outlier = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{input}{\code{source} - Input vector layer. Path to a vector layer.}

\item{ew_step}{\code{number} - Interpolation spline step value in east direction. A numeric value.}

\item{ns_step}{\code{number} - Interpolation spline step value in north direction. A numeric value.}

\item{lambda}{\code{number} - Tykhonov regularization weight. A numeric value.}

\item{threshold}{\code{number} - Threshold for the outliers. A numeric value.}

\item{filter}{\code{enum}  of \verb{("both", "positive", "negative")} - Filtering option. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{.e}{\code{boolean} - Estimate point density and distance. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.}

\item{output}{\code{vectorDestination} - Layer without outliers. Path for new vector layer.}

\item{outlier}{\code{vectorDestination} - Outliers. Path for new vector layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_SNAP_TOLERANCE_PARAMETER}{\code{number} - v.in.ogr snap tolerance (-1 = no snap). A numeric value.}

\item{GRASS_MIN_AREA_PARAMETER}{\code{number} - v.in.ogr min area. A numeric value.}

\item{GRASS_OUTPUT_TYPE_PARAMETER}{\code{enum}  of \verb{("auto", "point", "line", "area")} - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{GRASS_VECTOR_DSCO}{\code{string} - v.out.ogr output data source options (dsco). String value.}

\item{GRASS_VECTOR_LCO}{\code{string} - v.out.ogr output layer options (lco). String value.}

\item{GRASS_VECTOR_EXPORT_NOCAT}{\code{boolean} - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by GRASS v.outlier (grass7:v.outlier)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputVector - Layer without outliers
\item outlier - outputVector - Outliers
}
}
}
