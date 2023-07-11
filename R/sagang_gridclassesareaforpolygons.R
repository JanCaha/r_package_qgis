##' QGIS Algorithm provided by SAGA Next Gen Grid classes area for polygons (sagang:gridclassesareaforpolygons). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer RESULT: Result 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PROCESS: Processing Order 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) cell by cell 		- 1: (1) polygon by polygon 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Cell Area Intersection 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) cell center 		- 1: (1) cell area 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OUTPUT: Output Measurment 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) total area 		- 1: (1) percentage 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' GRID_VALUES: Class Definition 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) values are class identifiers 		- 1: (1) use look-up table 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' GRID_LUT: Look-up Table (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer GRID_LUT_MIN: Value 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names GRID_LUT_MAX: Value (Maximum) 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names GRID_LUT_NAM: Name 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names
##'
##' @title QGIS algorithm - Grid classes area for polygons
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param PROCESS `enum`  of `("(0) cell by cell", "(1) polygon by polygon")` - Processing Order. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) cell center", "(1) cell area")` - Cell Area Intersection. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `enum`  of `("(0) total area", "(1) percentage")` - Output Measurment. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRID_VALUES `enum`  of `("(0) values are class identifiers", "(1) use look-up table")` - Class Definition. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRID_LUT `source` - Look-up Table. Path to a vector layer.
##' @param GRID_LUT_MIN `field` - Value. The name of an existing field. ; delimited list of existing field names.
##' @param GRID_LUT_MAX `field` - Value (Maximum). The name of an existing field. ; delimited list of existing field names.
##' @param GRID_LUT_NAM `field` - Name. The name of an existing field. ; delimited list of existing field names.
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

sagang_gridclassesareaforpolygons <- function(POLYGONS = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), GRID = qgisprocess:::qgis_default_value(), PROCESS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), GRID_VALUES = qgisprocess:::qgis_default_value(), GRID_LUT = qgisprocess:::qgis_default_value(), GRID_LUT_MIN = qgisprocess:::qgis_default_value(), GRID_LUT_MAX = qgisprocess:::qgis_default_value(), GRID_LUT_NAM = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gridclassesareaforpolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gridclassesareaforpolygons", `POLYGONS` = POLYGONS, `RESULT` = RESULT, `GRID` = GRID, `PROCESS` = PROCESS, `METHOD` = METHOD, `OUTPUT` = OUTPUT, `GRID_VALUES` = GRID_VALUES, `GRID_LUT` = GRID_LUT, `GRID_LUT_MIN` = GRID_LUT_MIN, `GRID_LUT_MAX` = GRID_LUT_MAX, `GRID_LUT_NAM` = GRID_LUT_NAM,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gridclassesareaforpolygons", `POLYGONS` = POLYGONS, `RESULT` = RESULT, `GRID` = GRID, `PROCESS` = PROCESS, `METHOD` = METHOD, `OUTPUT` = OUTPUT, `GRID_VALUES` = GRID_VALUES, `GRID_LUT` = GRID_LUT, `GRID_LUT_MIN` = GRID_LUT_MIN, `GRID_LUT_MAX` = GRID_LUT_MAX, `GRID_LUT_NAM` = GRID_LUT_NAM,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}