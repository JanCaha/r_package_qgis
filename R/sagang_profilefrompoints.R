##' QGIS Algorithm provided by SAGA Next Gen Profile from points (sagang:profilefrompoints). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TABLE: Input 	Argument type:	source 	Acceptable values: 		- Path to a vector layer X: X 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names Y: Y 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names RESULT: Result 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Profile from points
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param TABLE `source` - Input. Path to a vector layer.
##' @param X `field` - X. The name of an existing field. ; delimited list of existing field names.
##' @param Y `field` - Y. The name of an existing field. ; delimited list of existing field names.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_profilefrompoints <- function(GRID = qgisprocess:::qgis_default_value(), TABLE = qgisprocess:::qgis_default_value(), X = qgisprocess:::qgis_default_value(), Y = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:profilefrompoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:profilefrompoints", `GRID` = GRID, `TABLE` = TABLE, `X` = X, `Y` = Y, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:profilefrompoints", `GRID` = GRID, `TABLE` = TABLE, `X` = X, `Y` = Y, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}