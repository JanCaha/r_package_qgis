##' QGIS Algorithm provided by QGIS (native c++) Sliver polygons (native:checkgeometrysliverpolygon). Detects sliver polygons that are too thin. This algorithm checks sliver polygons.  The thinness is the ratio between the area of the minimum square containing the polygon and the area of the polygon itself (a square has a thinness value of  1). The thinness value is between 1 and +infinity. If a polygon has an area higher than the maximum area, it is skipped (a maximum area value of 0 means no area check).  Polygons having a thinness higher than the maximum thinness are errors.  To fix sliver polygons, use the "Fix small polygons" algorithm.
##'
##' @title QGIS algorithm - Sliver polygons
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Unique feature identifier. The name of an existing field. ; delimited list of existing field names.
##' @param ERRORS `sink` - Sliver polygon errors. Path for new vector layer.
##' @param OUTPUT `sink` - Sliver polygon features. Path for new vector layer.
##' @param MAX_THINNESS `number` - Maximum thinness. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_AREA `number` - Maximum area (map units squared). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ERRORS - outputVector - Sliver polygon errors
##' * OUTPUT - outputVector - Sliver polygon features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_checkgeometrysliverpolygon <- function(INPUT = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), MAX_THINNESS = qgisprocess:::qgis_default_value(), MAX_AREA = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:checkgeometrysliverpolygon")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:checkgeometrysliverpolygon", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `ERRORS` = ERRORS, `OUTPUT` = OUTPUT, `MAX_THINNESS` = MAX_THINNESS, `MAX_AREA` = MAX_AREA, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:checkgeometrysliverpolygon", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `ERRORS` = ERRORS, `OUTPUT` = OUTPUT, `MAX_THINNESS` = MAX_THINNESS, `MAX_AREA` = MAX_AREA, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ERRORS")
  }
}