##' QGIS Algorithm provided by SAGA Next Gen Feature extents (sagang:featureextents). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer EXTENTS: Extents 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer OUTPUT: Get Extent for ... 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) all shapes 		- 1: (1) each shape 		- 2: (2) each shape's part 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Feature extents
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param EXTENTS `vectorDestination` - Extents. Path for new vector layer.
##' @param OUTPUT `enum`  of `("(0) all shapes", "(1) each shape", "(2) each shape's part")` - Get Extent for .... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EXTENTS - outputVector - Extents
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_featureextents <- function(SHAPES = qgisprocess:::qgis_default_value(), EXTENTS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:featureextents")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:featureextents", `SHAPES` = SHAPES, `EXTENTS` = EXTENTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:featureextents", `SHAPES` = SHAPES, `EXTENTS` = EXTENTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EXTENTS")
  }
}