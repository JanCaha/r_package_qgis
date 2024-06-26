% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass_r_resamp_bspline.R
\name{grass_r_resamp_bspline}
\alias{grass_r_resamp_bspline}
\title{QGIS algorithm - r.resamp.bspline}
\usage{
grass_r_resamp_bspline(
  input = qgisprocess:::qgis_default_value(),
  mask = qgisprocess:::qgis_default_value(),
  method = qgisprocess:::qgis_default_value(),
  ew_step = qgisprocess:::qgis_default_value(),
  ns_step = qgisprocess:::qgis_default_value(),
  lambda = qgisprocess:::qgis_default_value(),
  memory = qgisprocess:::qgis_default_value(),
  .n = qgisprocess:::qgis_default_value(),
  .c = qgisprocess:::qgis_default_value(),
  output = qgisprocess:::qgis_default_value(),
  grid = qgisprocess:::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),
  GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(),
  GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),
  GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess:::qgis_default_value(),
  GRASS_VECTOR_DSCO = qgisprocess:::qgis_default_value(),
  GRASS_VECTOR_LCO = qgisprocess:::qgis_default_value(),
  GRASS_VECTOR_EXPORT_NOCAT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{input}{\code{raster} - Input raster layer. Path to a raster layer.}

\item{mask}{\code{raster} - Name of raster map to use for masking. Only cells that are not NULL and not zero are interpolated. Path to a raster layer.}

\item{method}{\code{enum}  of \verb{("bilinear", "bicubic")} - Sampling interpolation method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{ew_step}{\code{number} - Length (float) of each spline step in the east-west direction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{ns_step}{\code{number} - Length (float) of each spline step in the north-south direction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{lambda}{\code{number} - Tykhonov regularization parameter (affects smoothing). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{memory}{\code{number} - Maximum memory to be used (in MB). Cache size for raster rows. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{.n}{\code{boolean} - Only interpolate null cells in input raster map. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -n.}

\item{.c}{\code{boolean} - Find the best Tykhonov regularizing parameter using a "leave-one-out" cross validation method. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -c.}

\item{output}{\code{rasterDestination} - Resampled BSpline. Path for new raster layer.}

\item{grid}{\code{vectorDestination} - Interpolation Grid. Path for new vector layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{GRASS_OUTPUT_TYPE_PARAMETER}{\code{enum}  of \verb{("auto", "point", "line", "area")} - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{GRASS_VECTOR_DSCO}{\code{string} - v.out.ogr output data source options (dsco). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{GRASS_VECTOR_LCO}{\code{string} - v.out.ogr output layer options (lco). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{GRASS_VECTOR_EXPORT_NOCAT}{\code{boolean} - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS r.resamp.bspline (grass:r.resamp.bspline). Performs bilinear or bicubic spline interpolation with Tykhonov regularization.
}
\details{
\subsection{Outputs description}{
\itemize{
\item grid - outputVector - Interpolation Grid
\item output - outputRaster - Resampled BSpline
}
}
}
