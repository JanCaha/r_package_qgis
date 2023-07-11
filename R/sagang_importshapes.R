##' QGIS Algorithm provided by SAGA Next Gen Import shapes (sagang:importshapes). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILES: Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file GEOM_TYPE: Geometry Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Automatic 		- 1: (1) Point 		- 2: (2) Point (2.5D) 		- 3: (3) Multi-Point 		- 4: (4) Multi-Point (2.5D) 		- 5: (5) Line 		- 6: (6) Line (2.5D) 		- 7: (7) Polyline 		- 8: (8) Polyline (2.5D) 		- 9: (9) Polygon 		- 10: (10) Polygon (2.5D) 		- 11: (11) Multi-Polygon 		- 12: (12) Multi-Polygon (2.5D) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Import shapes
##'
##' @param SHAPES `vectorDestination` - Shapes. Path for new vector layer.
##' @param FILES `file` - Files. Path to a file.
##' @param GEOM_TYPE `enum`  of `("(0) Automatic", "(1) Point", "(2) Point (2.5D)", "(3) Multi-Point", "(4) Multi-Point (2.5D)", "(5) Line", "(6) Line (2.5D)", "(7) Polyline", "(8) Polyline (2.5D)", "(9) Polygon", "(10) Polygon (2.5D)", "(11) Multi-Polygon", "(12) Multi-Polygon (2.5D)")` - Geometry Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SHAPES - outputVector - Shapes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importshapes <- function(SHAPES = qgisprocess:::qgis_default_value(), FILES = qgisprocess:::qgis_default_value(), GEOM_TYPE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importshapes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importshapes", `SHAPES` = SHAPES, `FILES` = FILES, `GEOM_TYPE` = GEOM_TYPE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importshapes", `SHAPES` = SHAPES, `FILES` = FILES, `GEOM_TYPE` = GEOM_TYPE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHAPES")
  }
}