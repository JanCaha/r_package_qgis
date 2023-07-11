##' QGIS Algorithm provided by SAGA Next Gen Contour lines (sagang:contourlines). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONTOUR: Contour 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer POLYGONS: Polygons 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer VERTEX: Vertex Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) x, y 		- 1: (1) x, y, z 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SCALE: Interpolation Scale 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LINE_PARTS: Split Parts 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression POLY_PARTS: Split Polygon Parts 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ZMIN: Minimum Contour Value 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ZMAX: Maximum Contour Value 	Default value:	10000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ZSTEP: Equidistance 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Contour lines
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param CONTOUR `vectorDestination` - Contour. Path for new vector layer.
##' @param POLYGONS `vectorDestination` - Polygons. Path for new vector layer.
##' @param VERTEX `enum`  of `("(0) x, y", "(1) x, y, z")` - Vertex Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SCALE `number` - Interpolation Scale. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LINE_PARTS `boolean` - Split Parts. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param POLY_PARTS `boolean` - Split Polygon Parts. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ZMIN `number` - Minimum Contour Value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ZMAX `number` - Maximum Contour Value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ZSTEP `number` - Equidistance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONTOUR - outputVector - Contour
##' * POLYGONS - outputVector - Polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_contourlines <- function(GRID = qgisprocess:::qgis_default_value(), CONTOUR = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), VERTEX = qgisprocess:::qgis_default_value(), SCALE = qgisprocess:::qgis_default_value(), LINE_PARTS = qgisprocess:::qgis_default_value(), POLY_PARTS = qgisprocess:::qgis_default_value(), ZMIN = qgisprocess:::qgis_default_value(), ZMAX = qgisprocess:::qgis_default_value(), ZSTEP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:contourlines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:contourlines", `GRID` = GRID, `CONTOUR` = CONTOUR, `POLYGONS` = POLYGONS, `VERTEX` = VERTEX, `SCALE` = SCALE, `LINE_PARTS` = LINE_PARTS, `POLY_PARTS` = POLY_PARTS, `ZMIN` = ZMIN, `ZMAX` = ZMAX, `ZSTEP` = ZSTEP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:contourlines", `GRID` = GRID, `CONTOUR` = CONTOUR, `POLYGONS` = POLYGONS, `VERTEX` = VERTEX, `SCALE` = SCALE, `LINE_PARTS` = LINE_PARTS, `POLY_PARTS` = POLY_PARTS, `ZMIN` = ZMIN, `ZMAX` = ZMAX, `ZSTEP` = ZSTEP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONTOUR")
  }
}