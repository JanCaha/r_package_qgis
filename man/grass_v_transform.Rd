% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass_v_transform.R
\name{grass_v_transform}
\alias{grass_v_transform}
\title{QGIS algorithm - v.transform}
\usage{
grass_v_transform(
  input = qgisprocess:::qgis_default_value(),
  xshift = qgisprocess:::qgis_default_value(),
  yshift = qgisprocess:::qgis_default_value(),
  zshift = qgisprocess:::qgis_default_value(),
  xscale = qgisprocess:::qgis_default_value(),
  yscale = qgisprocess:::qgis_default_value(),
  zscale = qgisprocess:::qgis_default_value(),
  zrotation = qgisprocess:::qgis_default_value(),
  columns = qgisprocess:::qgis_default_value(),
  .t = qgisprocess:::qgis_default_value(),
  .w = qgisprocess:::qgis_default_value(),
  .x = qgisprocess:::qgis_default_value(),
  .y = qgisprocess:::qgis_default_value(),
  .a = qgisprocess:::qgis_default_value(),
  .b = qgisprocess:::qgis_default_value(),
  output = qgisprocess:::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),
  GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess:::qgis_default_value(),
  GRASS_MIN_AREA_PARAMETER = qgisprocess:::qgis_default_value(),
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
\item{input}{\code{source} - Input vector layer. Path to a vector layer.}

\item{xshift}{\code{number} - X shift. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{yshift}{\code{number} - Y shift. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{zshift}{\code{number} - Z shift. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{xscale}{\code{number} - X scale. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{yscale}{\code{number} - Y scale. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{zscale}{\code{number} - Z scale. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{zrotation}{\code{number} - Rotation around z axis in degrees counterclockwise. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{columns}{\code{string} - Name of attribute column(s) used as transformation parameters (Format: parameter:column, e.g. xshift:xs,yshift:ys,zrot:zr). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{.t}{\code{boolean} - Shift all z values to bottom=0. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -t.}

\item{.w}{\code{boolean} - Swap coordinates x, y and then apply other parameters. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -w.}

\item{.x}{\code{boolean} - Swap coordinates x, z and then apply other parameters. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -x.}

\item{.y}{\code{boolean} - Swap coordinates y, z and then apply other parameters. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -y.}

\item{.a}{\code{boolean} - Swap coordinates after the other transformations. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -a.}

\item{.b}{\code{boolean} - Do not build topology. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -b.}

\item{output}{\code{vectorDestination} - Transformed. Path for new vector layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_SNAP_TOLERANCE_PARAMETER}{\code{number} - v.in.ogr snap tolerance (-1 = no snap). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{GRASS_MIN_AREA_PARAMETER}{\code{number} - v.in.ogr min area. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

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
QGIS Algorithm provided by GRASS v.transform (grass:v.transform). Performs an affine transformation on a vector layer.
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputVector - Transformed
}
}
}
