##' QGIS Algorithm provided by SAGA Next Gen Line-polygon intersection (sagang:linepolygonintersection). ---------------- Arguments ----------------  LINES: Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer INTERSECT: Intersection 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DIFFERENCE: Difference 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer ATTRIBUTES: Attributes 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) polygon 		- 1: (1) line 		- 2: (2) line and polygon 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Line-polygon intersection
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param INTERSECT `vectorDestination` - Intersection. Path for new vector layer.
##' @param DIFFERENCE `vectorDestination` - Difference. Path for new vector layer.
##' @param ATTRIBUTES `enum`  of `("(0) polygon", "(1) line", "(2) line and polygon")` - Attributes. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DIFFERENCE - outputVector - Difference
##' * INTERSECT - outputVector - Intersection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_linepolygonintersection <- function(LINES = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), INTERSECT = qgisprocess:::qgis_default_value(), DIFFERENCE = qgisprocess:::qgis_default_value(), ATTRIBUTES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:linepolygonintersection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:linepolygonintersection", `LINES` = LINES, `POLYGONS` = POLYGONS, `INTERSECT` = INTERSECT, `DIFFERENCE` = DIFFERENCE, `ATTRIBUTES` = ATTRIBUTES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:linepolygonintersection", `LINES` = LINES, `POLYGONS` = POLYGONS, `INTERSECT` = INTERSECT, `DIFFERENCE` = DIFFERENCE, `ATTRIBUTES` = ATTRIBUTES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DIFFERENCE")
  }
}