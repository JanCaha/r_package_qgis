##' QGIS Algorithm provided by SAGA Next Gen Split shapes layer completely (sagang:splitshapeslayercompletely). ---------------- Arguments ----------------  SHAPES: Input 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names LIST: Output 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer NAMING: Name by... 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) number of order 		- 1: (1) attribute 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Split shapes layer completely
##'
##' @param SHAPES `source` - Input. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param LIST `vectorDestination` - Output. Path for new vector layer.
##' @param NAMING `enum`  of `("(0) number of order", "(1) attribute")` - Name by.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LIST - outputVector - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_splitshapeslayercompletely <- function(SHAPES = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), LIST = qgisprocess:::qgis_default_value(), NAMING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:splitshapeslayercompletely")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:splitshapeslayercompletely", `SHAPES` = SHAPES, `FIELD` = FIELD, `LIST` = LIST, `NAMING` = NAMING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:splitshapeslayercompletely", `SHAPES` = SHAPES, `FIELD` = FIELD, `LIST` = LIST, `NAMING` = NAMING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LIST")
  }
}