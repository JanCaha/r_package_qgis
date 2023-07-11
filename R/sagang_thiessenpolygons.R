##' QGIS Algorithm provided by SAGA Next Gen Thiessen polygons (sagang:thiessenpolygons). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POLYGONS: Polygons 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FRAME: Frame Size 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Thiessen polygons
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param POLYGONS `vectorDestination` - Polygons. Path for new vector layer.
##' @param FRAME `number` - Frame Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POLYGONS - outputVector - Polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_thiessenpolygons <- function(POINTS = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), FRAME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:thiessenpolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:thiessenpolygons", `POINTS` = POINTS, `POLYGONS` = POLYGONS, `FRAME` = FRAME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:thiessenpolygons", `POINTS` = POINTS, `POLYGONS` = POLYGONS, `FRAME` = FRAME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POLYGONS")
  }
}