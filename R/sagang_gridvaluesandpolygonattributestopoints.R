##' QGIS Algorithm provided by SAGA Next Gen Grid values and polygon attributes to points (sagang:gridvaluesandpolygonattributestopoints). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ATTRIBUTE: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names POINTS: Points Table 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Grid values and polygon attributes to points
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param POINTS `vectorDestination` - Points Table. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points Table
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gridvaluesandpolygonattributestopoints <- function(GRID = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), ATTRIBUTE = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gridvaluesandpolygonattributestopoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gridvaluesandpolygonattributestopoints", `GRID` = GRID, `POLYGONS` = POLYGONS, `ATTRIBUTE` = ATTRIBUTE, `POINTS` = POINTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gridvaluesandpolygonattributestopoints", `GRID` = GRID, `POLYGONS` = POLYGONS, `ATTRIBUTE` = ATTRIBUTE, `POINTS` = POINTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POINTS")
  }
}