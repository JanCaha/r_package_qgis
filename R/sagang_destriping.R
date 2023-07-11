##' QGIS Algorithm provided by SAGA Next Gen Destriping (sagang:destriping). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MASK: Mask (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT3: Destriped Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESULT1: Low-pass 1 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESULT2: Low-pass 2 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STRIPES: Stripes 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ANG: Angle 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression R: Radius 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression D: Stripes Distance 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Destriping
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param RESULT3 `rasterDestination` - Destriped Grid. Path for new raster layer.
##' @param RESULT1 `rasterDestination` - Low-pass 1. Path for new raster layer.
##' @param RESULT2 `rasterDestination` - Low-pass 2. Path for new raster layer.
##' @param STRIPES `rasterDestination` - Stripes. Path for new raster layer.
##' @param ANG `number` - Angle. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param R `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param D `number` - Stripes Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT1 - outputRaster - Low-pass 1
##' * RESULT2 - outputRaster - Low-pass 2
##' * RESULT3 - outputRaster - Destriped Grid
##' * STRIPES - outputRaster - Stripes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_destriping <- function(INPUT = qgisprocess:::qgis_default_value(), MASK = qgisprocess:::qgis_default_value(), RESULT3 = qgisprocess:::qgis_default_value(), RESULT1 = qgisprocess:::qgis_default_value(), RESULT2 = qgisprocess:::qgis_default_value(), STRIPES = qgisprocess:::qgis_default_value(), ANG = qgisprocess:::qgis_default_value(), R = qgisprocess:::qgis_default_value(), D = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:destriping")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:destriping", `INPUT` = INPUT, `MASK` = MASK, `RESULT3` = RESULT3, `RESULT1` = RESULT1, `RESULT2` = RESULT2, `STRIPES` = STRIPES, `ANG` = ANG, `R` = R, `D` = D,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:destriping", `INPUT` = INPUT, `MASK` = MASK, `RESULT3` = RESULT3, `RESULT1` = RESULT1, `RESULT2` = RESULT2, `STRIPES` = STRIPES, `ANG` = ANG, `R` = R, `D` = D,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT1")
  }
}