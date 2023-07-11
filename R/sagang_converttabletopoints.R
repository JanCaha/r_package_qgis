##' QGIS Algorithm provided by SAGA Next Gen Convert table to points (sagang:converttabletopoints). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer TABLE: Table 	Argument type:	source 	Acceptable values: 		- Path to a vector layer X: X 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names Y: Y 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names Z: Z 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names
##'
##' @title QGIS algorithm - Convert table to points
##'
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param X `field` - X. The name of an existing field. ; delimited list of existing field names.
##' @param Y `field` - Y. The name of an existing field. ; delimited list of existing field names.
##' @param Z `field` - Z. The name of an existing field. ; delimited list of existing field names.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_converttabletopoints <- function(POINTS = qgisprocess:::qgis_default_value(), TABLE = qgisprocess:::qgis_default_value(), X = qgisprocess:::qgis_default_value(), Y = qgisprocess:::qgis_default_value(), Z = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:converttabletopoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:converttabletopoints", `POINTS` = POINTS, `TABLE` = TABLE, `X` = X, `Y` = Y, `Z` = Z,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:converttabletopoints", `POINTS` = POINTS, `TABLE` = TABLE, `X` = X, `Y` = Y, `Z` = Z,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POINTS")
  }
}