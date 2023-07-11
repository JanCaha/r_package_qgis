##' QGIS Algorithm provided by SAGA Next Gen Remove boundary polygons (sagang:removeboundarypolygons). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer RESULT: Result 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Extent 		- 1: (1) Polygon Boundary 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Remove boundary polygons
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param METHOD `enum`  of `("(0) Extent", "(1) Polygon Boundary")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_removeboundarypolygons <- function(POLYGONS = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:removeboundarypolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:removeboundarypolygons", `POLYGONS` = POLYGONS, `RESULT` = RESULT, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:removeboundarypolygons", `POLYGONS` = POLYGONS, `RESULT` = RESULT, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}