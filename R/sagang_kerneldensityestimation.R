##' QGIS Algorithm provided by SAGA Next Gen Kernel density estimation (sagang:kerneldensityestimation). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POPULATION: Population 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names RADIUS: Radius 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL: Kernel 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) quartic kernel 		- 1: (1) gaussian kernel 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. TARGET_USER_SIZE: Cellsize 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_OUT_GRID: Target Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Kernel density estimation
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param POPULATION `field` - Population. The name of an existing field. ; delimited list of existing field names.
##' @param RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL `enum`  of `("(0) quartic kernel", "(1) gaussian kernel")` - Kernel. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_OUT_GRID `rasterDestination` - Target Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TARGET_OUT_GRID - outputRaster - Target Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_kerneldensityestimation <- function(POINTS = qgisprocess:::qgis_default_value(), POPULATION = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), KERNEL = qgisprocess:::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess:::qgis_default_value(), TARGET_USER_SIZE = qgisprocess:::qgis_default_value(), TARGET_OUT_GRID = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:kerneldensityestimation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:kerneldensityestimation", `POINTS` = POINTS, `POPULATION` = POPULATION, `RADIUS` = RADIUS, `KERNEL` = KERNEL, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_OUT_GRID` = TARGET_OUT_GRID,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:kerneldensityestimation", `POINTS` = POINTS, `POPULATION` = POPULATION, `RADIUS` = RADIUS, `KERNEL` = KERNEL, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_OUT_GRID` = TARGET_OUT_GRID,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TARGET_OUT_GRID")
  }
}