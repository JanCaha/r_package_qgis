##' QGIS Algorithm provided by QGIS (native c++) Create wedge buffers (native:wedgebuffers). This algorithm creates wedge shaped buffers from input points.  The azimuth parameter gives the angle (in degrees) for the middle of the wedge to point. The buffer width (in degrees) is specified by the width parameter. Note that the wedge will extend to half of the angular width either side of the azimuth direction.  The outer radius of the buffer is specified via outer radius, and optionally an inner radius can also be specified.  The native output from this algorithm are CurvePolygon geometries, but these may be automatically segmentized to Polygons depending on the output format.
##'
##' @title QGIS algorithm - Create wedge buffers
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param AZIMUTH `number` - Azimuth (degrees from North). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param WIDTH `number` - Wedge width (in degrees). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTER_RADIUS `number` - Outer radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INNER_RADIUS `number` - Inner radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Buffers. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Buffers
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_wedgebuffers <- function(INPUT = qgisprocess:::qgis_default_value(), AZIMUTH = qgisprocess:::qgis_default_value(), WIDTH = qgisprocess:::qgis_default_value(), OUTER_RADIUS = qgisprocess:::qgis_default_value(), INNER_RADIUS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:wedgebuffers")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:wedgebuffers", `INPUT` = INPUT, `AZIMUTH` = AZIMUTH, `WIDTH` = WIDTH, `OUTER_RADIUS` = OUTER_RADIUS, `INNER_RADIUS` = INNER_RADIUS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:wedgebuffers", `INPUT` = INPUT, `AZIMUTH` = AZIMUTH, `WIDTH` = WIDTH, `OUTER_RADIUS` = OUTER_RADIUS, `INNER_RADIUS` = INNER_RADIUS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}