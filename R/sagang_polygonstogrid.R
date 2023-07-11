##' QGIS Algorithm provided by SAGA Next Gen Polygons to grid (sagang:polygonstogrid). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names OUTPUT: Output Values 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) index number 		- 1: (1) attribute 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MULTIPLE: Multiple Polygons 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) minimum coverage 		- 1: (1) maximum coverage 		- 2: (2) average proportional to area coverage 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' GRID_TYPE: Data Type 	Default value:	9 	Argument type:	enum 	Available values: 		- 0: (0) 1 bit 		- 1: (1) 1 byte unsigned integer 		- 2: (2) 1 byte signed integer 		- 3: (3) 2 byte unsigned integer 		- 4: (4) 2 byte signed integer 		- 5: (5) 4 byte unsigned integer 		- 6: (6) 4 byte signed integer 		- 7: (7) 4 byte floating point 		- 8: (8) 8 byte floating point 		- 9: (9) same as attribute 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. TARGET_USER_SIZE: Cellsize 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression GRID: Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer COVERAGE: Coverage 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Polygons to grid
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `enum`  of `("(0) index number", "(1) attribute")` - Output Values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MULTIPLE `enum`  of `("(0) minimum coverage", "(1) maximum coverage", "(2) average proportional to area coverage")` - Multiple Polygons. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRID_TYPE `enum`  of `("(0) 1 bit", "(1) 1 byte unsigned integer", "(2) 1 byte signed integer", "(3) 2 byte unsigned integer", "(4) 2 byte signed integer", "(5) 4 byte unsigned integer", "(6) 4 byte signed integer", "(7) 4 byte floating point", "(8) 8 byte floating point", "(9) same as attribute")` - Data Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRID `rasterDestination` - Grid. Path for new raster layer.
##' @param COVERAGE `rasterDestination` - Coverage. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COVERAGE - outputRaster - Coverage
##' * GRID - outputRaster - Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polygonstogrid <- function(POLYGONS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), MULTIPLE = qgisprocess:::qgis_default_value(), GRID_TYPE = qgisprocess:::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess:::qgis_default_value(), TARGET_USER_SIZE = qgisprocess:::qgis_default_value(), GRID = qgisprocess:::qgis_default_value(), COVERAGE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polygonstogrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polygonstogrid", `POLYGONS` = POLYGONS, `FIELD` = FIELD, `OUTPUT` = OUTPUT, `MULTIPLE` = MULTIPLE, `GRID_TYPE` = GRID_TYPE, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `GRID` = GRID, `COVERAGE` = COVERAGE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polygonstogrid", `POLYGONS` = POLYGONS, `FIELD` = FIELD, `OUTPUT` = OUTPUT, `MULTIPLE` = MULTIPLE, `GRID_TYPE` = GRID_TYPE, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `GRID` = GRID, `COVERAGE` = COVERAGE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COVERAGE")
  }
}