##' QGIS Algorithm provided by SAGA Next Gen Import surfer blanking files (sagang:importsurferblankingfiles). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer TABLE: Look up table (Points) 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file TYPE: Shape Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) points 		- 1: (1) lines 		- 2: (2) polygons 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Import surfer blanking files
##'
##' @param SHAPES `vectorDestination` - Shapes. Path for new vector layer.
##' @param TABLE `vectorDestination` - Look up table (Points). Path for new vector layer.
##' @param FILE `file` - File. Path to a file.
##' @param TYPE `enum`  of `("(0) points", "(1) lines", "(2) polygons")` - Shape Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SHAPES - outputVector - Shapes
##' * TABLE - outputVector - Look up table (Points)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importsurferblankingfiles <- function(SHAPES = qgisprocess:::qgis_default_value(), TABLE = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importsurferblankingfiles")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importsurferblankingfiles", `SHAPES` = SHAPES, `TABLE` = TABLE, `FILE` = FILE, `TYPE` = TYPE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importsurferblankingfiles", `SHAPES` = SHAPES, `TABLE` = TABLE, `FILE` = FILE, `TYPE` = TYPE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHAPES")
  }
}