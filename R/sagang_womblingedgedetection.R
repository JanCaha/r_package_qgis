##' QGIS Algorithm provided by SAGA Next Gen Wombling (edge detection) (sagang:womblingedgedetection). ---------------- Arguments ----------------  TMAGNITUDE: Minimum Magnitude 	Default value:	90 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TDIRECTION: Maximum Angle 	Default value:	30 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TNEIGHBOUR: Minimum Neighbours 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ALIGNMENT: Alignment 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) between cells 		- 1: (1) on cell 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NEIGHBOUR: Edge Connectivity 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Rooke's case 		- 1: (1) Queen's case 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FEATURE: Feature 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer EDGE_POINTS: Edge Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer EDGE_LINES: Edge Segments 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer GRADIENTS_OUT: Output of Gradients 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression GRADIENTS: Gradients 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Wombling (edge detection)
##'
##' @param TMAGNITUDE `number` - Minimum Magnitude. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TDIRECTION `number` - Maximum Angle. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TNEIGHBOUR `number` - Minimum Neighbours. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ALIGNMENT `enum`  of `("(0) between cells", "(1) on cell")` - Alignment. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NEIGHBOUR `enum`  of `("(0) Rooke's case", "(1) Queen's case")` - Edge Connectivity. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FEATURE `raster` - Feature. Path to a raster layer.
##' @param EDGE_POINTS `vectorDestination` - Edge Points. Path for new vector layer.
##' @param EDGE_LINES `vectorDestination` - Edge Segments. Path for new vector layer.
##' @param GRADIENTS_OUT `boolean` - Output of Gradients. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRADIENTS `rasterDestination` - Gradients. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EDGE_LINES - outputVector - Edge Segments
##' * EDGE_POINTS - outputVector - Edge Points
##' * GRADIENTS - outputRaster - Gradients
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_womblingedgedetection <- function(TMAGNITUDE = qgisprocess:::qgis_default_value(), TDIRECTION = qgisprocess:::qgis_default_value(), TNEIGHBOUR = qgisprocess:::qgis_default_value(), ALIGNMENT = qgisprocess:::qgis_default_value(), NEIGHBOUR = qgisprocess:::qgis_default_value(), FEATURE = qgisprocess:::qgis_default_value(), EDGE_POINTS = qgisprocess:::qgis_default_value(), EDGE_LINES = qgisprocess:::qgis_default_value(), GRADIENTS_OUT = qgisprocess:::qgis_default_value(), GRADIENTS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:womblingedgedetection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:womblingedgedetection", `TMAGNITUDE` = TMAGNITUDE, `TDIRECTION` = TDIRECTION, `TNEIGHBOUR` = TNEIGHBOUR, `ALIGNMENT` = ALIGNMENT, `NEIGHBOUR` = NEIGHBOUR, `FEATURE` = FEATURE, `EDGE_POINTS` = EDGE_POINTS, `EDGE_LINES` = EDGE_LINES, `GRADIENTS_OUT` = GRADIENTS_OUT, `GRADIENTS` = GRADIENTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:womblingedgedetection", `TMAGNITUDE` = TMAGNITUDE, `TDIRECTION` = TDIRECTION, `TNEIGHBOUR` = TNEIGHBOUR, `ALIGNMENT` = ALIGNMENT, `NEIGHBOUR` = NEIGHBOUR, `FEATURE` = FEATURE, `EDGE_POINTS` = EDGE_POINTS, `EDGE_LINES` = EDGE_LINES, `GRADIENTS_OUT` = GRADIENTS_OUT, `GRADIENTS` = GRADIENTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EDGE_LINES")
  }
}