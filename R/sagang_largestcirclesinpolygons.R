##' QGIS Algorithm provided by SAGA Next Gen Largest circles in polygons (sagang:largestcirclesinpolygons). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer CIRCLES: Circles 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer RESOLUTION: Resolution 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Largest circles in polygons
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param CIRCLES `vectorDestination` - Circles. Path for new vector layer.
##' @param RESOLUTION `number` - Resolution. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CIRCLES - outputVector - Circles
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_largestcirclesinpolygons <- function(POLYGONS = qgisprocess:::qgis_default_value(), CIRCLES = qgisprocess:::qgis_default_value(), RESOLUTION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:largestcirclesinpolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:largestcirclesinpolygons", `POLYGONS` = POLYGONS, `CIRCLES` = CIRCLES, `RESOLUTION` = RESOLUTION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:largestcirclesinpolygons", `POLYGONS` = POLYGONS, `CIRCLES` = CIRCLES, `RESOLUTION` = RESOLUTION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CIRCLES")
  }
}