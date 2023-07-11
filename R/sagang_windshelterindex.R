##' QGIS Algorithm provided by SAGA Next Gen Wind shelter index (sagang:windshelterindex). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SHELTER: Wind Shelter Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIRECTION: Wind Direction 	Default value:	135 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TOLERANCE: Tolerance 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DISTANCE: Distance 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression QUANTILE: Quantile 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NEGATIVES: Include Negative Slopes 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) windward 		- 1: (1) leeward 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Wind shelter index
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SHELTER `rasterDestination` - Wind Shelter Index. Path for new raster layer.
##' @param DIRECTION `number` - Wind Direction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTANCE `number` - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param QUANTILE `number` - Quantile. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NEGATIVES `boolean` - Include Negative Slopes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) windward", "(1) leeward")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SHELTER - outputRaster - Wind Shelter Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_windshelterindex <- function(ELEVATION = qgisprocess:::qgis_default_value(), SHELTER = qgisprocess:::qgis_default_value(), DIRECTION = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), QUANTILE = qgisprocess:::qgis_default_value(), NEGATIVES = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:windshelterindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:windshelterindex", `ELEVATION` = ELEVATION, `SHELTER` = SHELTER, `DIRECTION` = DIRECTION, `TOLERANCE` = TOLERANCE, `DISTANCE` = DISTANCE, `QUANTILE` = QUANTILE, `NEGATIVES` = NEGATIVES, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:windshelterindex", `ELEVATION` = ELEVATION, `SHELTER` = SHELTER, `DIRECTION` = DIRECTION, `TOLERANCE` = TOLERANCE, `DISTANCE` = DISTANCE, `QUANTILE` = QUANTILE, `NEGATIVES` = NEGATIVES, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHELTER")
  }
}