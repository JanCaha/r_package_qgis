##' QGIS Algorithm provided by SAGA Next Gen Mesh denoise (sagang:meshdenoise). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OUTPUT: Denoised Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SIGMA: Threshold 	Default value:	0.9 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ITER: Number of Iterations for Normal Updating 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VITER: Number of Iterations for Vertex Updating 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NB_CV: Common Edge Type of Face Neighbourhood 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Common Vertex 		- 1: (1) Common Edge 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' ZONLY: Only Z-Direction Position is Updated 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Mesh denoise
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Denoised Grid. Path for new raster layer.
##' @param SIGMA `number` - Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ITER `number` - Number of Iterations for Normal Updating. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VITER `number` - Number of Iterations for Vertex Updating. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NB_CV `enum`  of `("(0) Common Vertex", "(1) Common Edge")` - Common Edge Type of Face Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ZONLY `boolean` - Only Z-Direction Position is Updated. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Denoised Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_meshdenoise <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), SIGMA = qgisprocess:::qgis_default_value(), ITER = qgisprocess:::qgis_default_value(), VITER = qgisprocess:::qgis_default_value(), NB_CV = qgisprocess:::qgis_default_value(), ZONLY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:meshdenoise")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:meshdenoise", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `SIGMA` = SIGMA, `ITER` = ITER, `VITER` = VITER, `NB_CV` = NB_CV, `ZONLY` = ZONLY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:meshdenoise", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `SIGMA` = SIGMA, `ITER` = ITER, `VITER` = VITER, `NB_CV` = NB_CV, `ZONLY` = ZONLY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}