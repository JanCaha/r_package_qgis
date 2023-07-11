##' QGIS Algorithm provided by SAGA Next Gen Convex hull (sagang:convexhull). ---------------- Arguments ----------------  SHAPES: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer HULLS: Convex Hull 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer BOXES: Minimum Bounding Box 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer POLYPOINTS: Hull Construction 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) one hull for all shapes 		- 1: (1) one hull per shape 		- 2: (2) one hull per shape part 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' POLYGONCVX: Polygon Convexity 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Convex hull
##'
##' @param SHAPES `source` - Points. Path to a vector layer.
##' @param HULLS `vectorDestination` - Convex Hull. Path for new vector layer.
##' @param BOXES `vectorDestination` - Minimum Bounding Box. Path for new vector layer.
##' @param POLYPOINTS `enum`  of `("(0) one hull for all shapes", "(1) one hull per shape", "(2) one hull per shape part")` - Hull Construction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param POLYGONCVX `boolean` - Polygon Convexity. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BOXES - outputVector - Minimum Bounding Box
##' * HULLS - outputVector - Convex Hull
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_convexhull <- function(SHAPES = qgisprocess:::qgis_default_value(), HULLS = qgisprocess:::qgis_default_value(), BOXES = qgisprocess:::qgis_default_value(), POLYPOINTS = qgisprocess:::qgis_default_value(), POLYGONCVX = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:convexhull")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:convexhull", `SHAPES` = SHAPES, `HULLS` = HULLS, `BOXES` = BOXES, `POLYPOINTS` = POLYPOINTS, `POLYGONCVX` = POLYGONCVX,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:convexhull", `SHAPES` = SHAPES, `HULLS` = HULLS, `BOXES` = BOXES, `POLYPOINTS` = POLYPOINTS, `POLYGONCVX` = POLYGONCVX,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BOXES")
  }
}