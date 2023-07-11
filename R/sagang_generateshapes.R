##' QGIS Algorithm provided by SAGA Next Gen Generate shapes (sagang:generateshapes). ---------------- Arguments ----------------  INPUT: Input 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD_ID: ID 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FIELD_X: X 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FIELD_Y: Y 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FIELD_Z: Z 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names SHAPE_TYPE: Shape Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Point(s) 		- 1: (1) Line(s) 		- 2: (2) Polygon(s) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OUTPUT: Output 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Generate shapes
##'
##' @param INPUT `source` - Input. Path to a vector layer.
##' @param FIELD_ID `field` - ID. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_X `field` - X. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_Y `field` - Y. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_Z `field` - Z. The name of an existing field. ; delimited list of existing field names.
##' @param SHAPE_TYPE `enum`  of `("(0) Point(s)", "(1) Line(s)", "(2) Polygon(s)")` - Shape Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

sagang_generateshapes <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD_ID = qgisprocess:::qgis_default_value(), FIELD_X = qgisprocess:::qgis_default_value(), FIELD_Y = qgisprocess:::qgis_default_value(), FIELD_Z = qgisprocess:::qgis_default_value(), SHAPE_TYPE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:generateshapes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:generateshapes", `INPUT` = INPUT, `FIELD_ID` = FIELD_ID, `FIELD_X` = FIELD_X, `FIELD_Y` = FIELD_Y, `FIELD_Z` = FIELD_Z, `SHAPE_TYPE` = SHAPE_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:generateshapes", `INPUT` = INPUT, `FIELD_ID` = FIELD_ID, `FIELD_X` = FIELD_X, `FIELD_Y` = FIELD_Y, `FIELD_Z` = FIELD_Z, `SHAPE_TYPE` = SHAPE_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}