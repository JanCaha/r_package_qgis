##' QGIS Algorithm provided by SAGA Next Gen Surface and gradient (sagang:surfaceandgradient). ---------------- Arguments ----------------  MASK: Mask 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SURF: Surface 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer GRAD: Gradient 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SURF_E: Surface Approximation Threshold 	Default value:	0.001 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Surface and gradient
##'
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param SURF `rasterDestination` - Surface. Path for new raster layer.
##' @param GRAD `rasterDestination` - Gradient. Path for new raster layer.
##' @param SURF_E `number` - Surface Approximation Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRAD - outputRaster - Gradient
##' * SURF - outputRaster - Surface
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_surfaceandgradient <- function(MASK = qgisprocess:::qgis_default_value(), SURF = qgisprocess:::qgis_default_value(), GRAD = qgisprocess:::qgis_default_value(), SURF_E = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:surfaceandgradient")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:surfaceandgradient", `MASK` = MASK, `SURF` = SURF, `GRAD` = GRAD, `SURF_E` = SURF_E,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:surfaceandgradient", `MASK` = MASK, `SURF` = SURF, `GRAD` = GRAD, `SURF_E` = SURF_E,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRAD")
  }
}