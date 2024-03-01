##' QGIS Algorithm provided by SAGA Next Gen Coordinate conversion (table) (sagang:coordinateconversiontable). ---------------- Arguments ----------------  TABLE: Table 	Argument type:	source 	Acceptable values: 		- Path to a vector layer SOURCE_X: X Coordinate Source 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names SOURCE_Y: Y Coordinate Source 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names TARGET_X: Projected X Coordinates 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names TARGET_Y: Projected Y Coordinates 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names
##'
##' @title QGIS algorithm - Coordinate conversion (table)
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param SOURCE_X `field` - X Coordinate Source. The name of an existing field. ; delimited list of existing field names.
##' @param SOURCE_Y `field` - Y Coordinate Source. The name of an existing field. ; delimited list of existing field names.
##' @param TARGET_X `field` - Projected X Coordinates. The name of an existing field. ; delimited list of existing field names.
##' @param TARGET_Y `field` - Projected Y Coordinates. The name of an existing field. ; delimited list of existing field names.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_coordinateconversiontable <- function(TABLE = qgisprocess:::qgis_default_value(), SOURCE_X = qgisprocess:::qgis_default_value(), SOURCE_Y = qgisprocess:::qgis_default_value(), TARGET_X = qgisprocess:::qgis_default_value(), TARGET_Y = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:coordinateconversiontable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:coordinateconversiontable", `TABLE` = TABLE, `SOURCE_X` = SOURCE_X, `SOURCE_Y` = SOURCE_Y, `TARGET_X` = TARGET_X, `TARGET_Y` = TARGET_Y,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:coordinateconversiontable", `TABLE` = TABLE, `SOURCE_X` = SOURCE_X, `SOURCE_Y` = SOURCE_Y, `TARGET_X` = TARGET_X, `TARGET_Y` = TARGET_Y,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}