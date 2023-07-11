##' QGIS Algorithm provided by SAGA Next Gen Warping shapes (sagang:warpingshapes). ---------------- Arguments ----------------  REF_SOURCE: Reference Points (Origin) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer REF_TARGET: Reference Points (Projection) (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer XFIELD: x Position 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names YFIELD: y Position 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Automatic 		- 1: (1) Triangulation 		- 2: (2) Spline 		- 3: (3) Affine 		- 4: (4) 1st Order Polynomial 		- 5: (5) 2nd Order Polynomial 		- 6: (6) 3rd Order Polynomial 		- 7: (7) Polynomial, Order 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' ORDER: Polynomial Order 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INPUT: Input 	Argument type:	source 	Acceptable values: 		- Path to a vector layer OUTPUT: Output 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Warping shapes
##'
##' @param REF_SOURCE `source` - Reference Points (Origin). Path to a vector layer.
##' @param REF_TARGET `source` - Reference Points (Projection). Path to a vector layer.
##' @param XFIELD `field` - x Position. The name of an existing field. ; delimited list of existing field names.
##' @param YFIELD `field` - y Position. The name of an existing field. ; delimited list of existing field names.
##' @param METHOD `enum`  of `("(0) Automatic", "(1) Triangulation", "(2) Spline", "(3) Affine", "(4) 1st Order Polynomial", "(5) 2nd Order Polynomial", "(6) 3rd Order Polynomial", "(7) Polynomial, Order")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ORDER `number` - Polynomial Order. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INPUT `source` - Input. Path to a vector layer.
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

sagang_warpingshapes <- function(REF_SOURCE = qgisprocess:::qgis_default_value(), REF_TARGET = qgisprocess:::qgis_default_value(), XFIELD = qgisprocess:::qgis_default_value(), YFIELD = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), ORDER = qgisprocess:::qgis_default_value(), INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:warpingshapes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:warpingshapes", `REF_SOURCE` = REF_SOURCE, `REF_TARGET` = REF_TARGET, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `METHOD` = METHOD, `ORDER` = ORDER, `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:warpingshapes", `REF_SOURCE` = REF_SOURCE, `REF_TARGET` = REF_TARGET, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `METHOD` = METHOD, `ORDER` = ORDER, `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}