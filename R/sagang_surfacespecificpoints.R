##' QGIS Algorithm provided by SAGA Next Gen Surface specific points (sagang:surfacespecificpoints). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Result 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Mark Highest Neighbour 		- 1: (1) Opposite Neighbours 		- 2: (2) Flow Direction 		- 3: (3) Flow Direction (up and down) 		- 4: (4) Peucker & Douglas 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' THRESHOLD: Threshold 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Surface specific points
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param RESULT `rasterDestination` - Result. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Mark Highest Neighbour", "(1) Opposite Neighbours", "(2) Flow Direction", "(3) Flow Direction (up and down)", "(4) Peucker & Douglas")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param THRESHOLD `number` - Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_surfacespecificpoints <- function(ELEVATION = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:surfacespecificpoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:surfacespecificpoints", `ELEVATION` = ELEVATION, `RESULT` = RESULT, `METHOD` = METHOD, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:surfacespecificpoints", `ELEVATION` = ELEVATION, `RESULT` = RESULT, `METHOD` = METHOD, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}