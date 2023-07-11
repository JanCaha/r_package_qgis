##' QGIS Algorithm provided by SAGA Next Gen Fractal brownian noise (sagang:fractalbrowniannoise). ---------------- Arguments ----------------  SCALING: Scaling 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) linear 		- 1: (1) geometric 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MAX_SCALE: Maximum Scale 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STEPS: Steps 	Default value:	8 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. TARGET_USER_SIZE: Cellsize 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUT_GRID: Fractal Brownian Noise 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Fractal brownian noise
##'
##' @param SCALING `enum`  of `("(0) linear", "(1) geometric")` - Scaling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MAX_SCALE `number` - Maximum Scale. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STEPS `number` - Steps. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUT_GRID `rasterDestination` - Fractal Brownian Noise. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUT_GRID - outputRaster - Fractal Brownian Noise
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_fractalbrowniannoise <- function(SCALING = qgisprocess:::qgis_default_value(), MAX_SCALE = qgisprocess:::qgis_default_value(), STEPS = qgisprocess:::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess:::qgis_default_value(), TARGET_USER_SIZE = qgisprocess:::qgis_default_value(), OUT_GRID = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:fractalbrowniannoise")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:fractalbrowniannoise", `SCALING` = SCALING, `MAX_SCALE` = MAX_SCALE, `STEPS` = STEPS, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `OUT_GRID` = OUT_GRID,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:fractalbrowniannoise", `SCALING` = SCALING, `MAX_SCALE` = MAX_SCALE, `STEPS` = STEPS, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `OUT_GRID` = OUT_GRID,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUT_GRID")
  }
}