##' QGIS Algorithm provided by SAGA Next Gen Upslope area (sagang:upslopearea). ---------------- Arguments ----------------  TARGET: Target Area (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TARGET_PT_X: Target X coordinate 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_PT_Y: Target Y coordinate 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SINKROUTE: Sink Routes (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer AREA: Upslope Area 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 		- 1: (1) Deterministic Infinity 		- 2: (2) Multiple Flow Direction 		- 3: (3) Multiple Triangular Flow Directon 		- 4: (4) Multiple Maximum Downslope Gradient Based Flow Directon 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CONVERGE: Convergence 	Default value:	1.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Upslope area
##'
##' @param TARGET `raster` - Target Area. Path to a raster layer.
##' @param TARGET_PT_X `number` - Target X coordinate. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_PT_Y `number` - Target Y coordinate. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SINKROUTE `raster` - Sink Routes. Path to a raster layer.
##' @param AREA `rasterDestination` - Upslope Area. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Deterministic 8", "(1) Deterministic Infinity", "(2) Multiple Flow Direction", "(3) Multiple Triangular Flow Directon", "(4) Multiple Maximum Downslope Gradient Based Flow Directon")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONVERGE `number` - Convergence. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * AREA - outputRaster - Upslope Area
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_upslopearea <- function(TARGET = qgisprocess:::qgis_default_value(), TARGET_PT_X = qgisprocess:::qgis_default_value(), TARGET_PT_Y = qgisprocess:::qgis_default_value(), ELEVATION = qgisprocess:::qgis_default_value(), SINKROUTE = qgisprocess:::qgis_default_value(), AREA = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), CONVERGE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:upslopearea")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:upslopearea", `TARGET` = TARGET, `TARGET_PT_X` = TARGET_PT_X, `TARGET_PT_Y` = TARGET_PT_Y, `ELEVATION` = ELEVATION, `SINKROUTE` = SINKROUTE, `AREA` = AREA, `METHOD` = METHOD, `CONVERGE` = CONVERGE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:upslopearea", `TARGET` = TARGET, `TARGET_PT_X` = TARGET_PT_X, `TARGET_PT_Y` = TARGET_PT_Y, `ELEVATION` = ELEVATION, `SINKROUTE` = SINKROUTE, `AREA` = AREA, `METHOD` = METHOD, `CONVERGE` = CONVERGE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "AREA")
  }
}