##' QGIS Algorithm provided by SAGA Next Gen Wombling for multiple features (edge detection) (sagang:womblingformultiplefeaturesedgedetection). ---------------- Arguments ----------------  TMAGNITUDE: Minimum Magnitude 	Default value:	90 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TDIRECTION: Maximum Angle 	Default value:	30 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TNEIGHBOUR: Minimum Neighbours 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ALIGNMENT: Alignment 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) between cells 		- 1: (1) on cell 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NEIGHBOUR: Edge Connectivity 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Rooke's case 		- 1: (1) Queen's case 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FEATURES: Features 	Argument type:	multilayer EDGE_CELLS: Edges 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUTPUT_ADD: Additional Output 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) gradients 		- 2: (2) edge cells 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OUTPUT: Output 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ZERO_AS_NODATA: Zero as No-Data 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Wombling for multiple features (edge detection)
##'
##' @param TMAGNITUDE `number` - Minimum Magnitude. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TDIRECTION `number` - Maximum Angle. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TNEIGHBOUR `number` - Minimum Neighbours. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ALIGNMENT `enum`  of `("(0) between cells", "(1) on cell")` - Alignment. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NEIGHBOUR `enum`  of `("(0) Rooke's case", "(1) Queen's case")` - Edge Connectivity. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FEATURES `multilayer` - Features. .
##' @param EDGE_CELLS `rasterDestination` - Edges. Path for new raster layer.
##' @param OUTPUT_ADD `enum`  of `("(0) none", "(1) gradients", "(2) edge cells")` - Additional Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param ZERO_AS_NODATA `boolean` - Zero as No-Data. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EDGE_CELLS - outputRaster - Edges
##' * OUTPUT - outputRaster - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_womblingformultiplefeaturesedgedetection <- function(TMAGNITUDE = qgisprocess:::qgis_default_value(), TDIRECTION = qgisprocess:::qgis_default_value(), TNEIGHBOUR = qgisprocess:::qgis_default_value(), ALIGNMENT = qgisprocess:::qgis_default_value(), NEIGHBOUR = qgisprocess:::qgis_default_value(), FEATURES = qgisprocess:::qgis_default_value(), EDGE_CELLS = qgisprocess:::qgis_default_value(), OUTPUT_ADD = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), ZERO_AS_NODATA = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:womblingformultiplefeaturesedgedetection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:womblingformultiplefeaturesedgedetection", `TMAGNITUDE` = TMAGNITUDE, `TDIRECTION` = TDIRECTION, `TNEIGHBOUR` = TNEIGHBOUR, `ALIGNMENT` = ALIGNMENT, `NEIGHBOUR` = NEIGHBOUR, `FEATURES` = FEATURES, `EDGE_CELLS` = EDGE_CELLS, `OUTPUT_ADD` = OUTPUT_ADD, `OUTPUT` = OUTPUT, `ZERO_AS_NODATA` = ZERO_AS_NODATA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:womblingformultiplefeaturesedgedetection", `TMAGNITUDE` = TMAGNITUDE, `TDIRECTION` = TDIRECTION, `TNEIGHBOUR` = TNEIGHBOUR, `ALIGNMENT` = ALIGNMENT, `NEIGHBOUR` = NEIGHBOUR, `FEATURES` = FEATURES, `EDGE_CELLS` = EDGE_CELLS, `OUTPUT_ADD` = OUTPUT_ADD, `OUTPUT` = OUTPUT, `ZERO_AS_NODATA` = ZERO_AS_NODATA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EDGE_CELLS")
  }
}