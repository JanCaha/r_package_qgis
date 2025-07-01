##' QGIS Algorithm provided by QGIS (native c++) Points outside polygons (native:checkgeometrypointinpolygon). Detects points that are not in polygons from the polygon layer list. This algorithm checks if points from the input layer are in polygons from the selected polygon layers. Points that are not fully inside polygons are errors.
##'
##' @title QGIS algorithm - Points outside polygons
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Unique feature identifier. The name of an existing field. ; delimited list of existing field names.
##' @param POLYGONS `multilayer` - Polygon layers. .
##' @param ERRORS `sink` - Points outside polygons errors. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ERRORS - outputVector - Points outside polygons errors
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_checkgeometrypointinpolygon <- function(INPUT = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:checkgeometrypointinpolygon")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:checkgeometrypointinpolygon", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `POLYGONS` = POLYGONS, `ERRORS` = ERRORS, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:checkgeometrypointinpolygon", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `POLYGONS` = POLYGONS, `ERRORS` = ERRORS, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ERRORS")
  }
}