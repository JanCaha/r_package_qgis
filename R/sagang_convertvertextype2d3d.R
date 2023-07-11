##' QGIS Algorithm provided by SAGA Next Gen Convert vertex type (2d/3d) (sagang:convertvertextype2d3d). ---------------- Arguments ----------------  INPUT: Input 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD_Z: Z 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FIELD_M: M 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names OUTPUT: Output 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Convert vertex type (2d/3d)
##'
##' @param INPUT `source` - Input. Path to a vector layer.
##' @param FIELD_Z `field` - Z. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_M `field` - M. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `vectorDestination` - Output. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_convertvertextype2d3d <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD_Z = qgisprocess:::qgis_default_value(), FIELD_M = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:convertvertextype2d3d")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:convertvertextype2d3d", `INPUT` = INPUT, `FIELD_Z` = FIELD_Z, `FIELD_M` = FIELD_M, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:convertvertextype2d3d", `INPUT` = INPUT, `FIELD_Z` = FIELD_Z, `FIELD_M` = FIELD_M, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}