##' QGIS Algorithm provided by SAGA Next Gen Tobia (sagang:tobia). ---------------- Arguments ----------------  A: Slope grid (rad) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer B: Aspect grid (rad) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer C: Dip grid (degrees)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer D: Dip direction grid (degrees)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer fB: Global structure dip (degrees) 	Default value:	45 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fC: Global structure dip direction (degrees) 	Default value:	90 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression E: TOBIA classes 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer F: TOBIA index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Tobia
##'
##' @param A `raster` - Slope grid (rad). Path to a raster layer.
##' @param B `raster` - Aspect grid (rad). Path to a raster layer.
##' @param C `raster` - Dip grid (degrees) . Path to a raster layer.
##' @param D `raster` - Dip direction grid (degrees) . Path to a raster layer.
##' @param fB `number` - Global structure dip (degrees). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fC `number` - Global structure dip direction (degrees). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param E `rasterDestination` - TOBIA classes. Path for new raster layer.
##' @param F `rasterDestination` - TOBIA index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * E - outputRaster - TOBIA classes
##' * F - outputRaster - TOBIA index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_tobia <- function(A = qgisprocess:::qgis_default_value(), B = qgisprocess:::qgis_default_value(), C = qgisprocess:::qgis_default_value(), D = qgisprocess:::qgis_default_value(), fB = qgisprocess:::qgis_default_value(), fC = qgisprocess:::qgis_default_value(), E = qgisprocess:::qgis_default_value(), F = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:tobia")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:tobia", `A` = A, `B` = B, `C` = C, `D` = D, `fB` = fB, `fC` = fC, `E` = E, `F` = F,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:tobia", `A` = A, `B` = B, `C` = C, `D` = D, `fB` = fB, `fC` = fC, `E` = E, `F` = F,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "E")
  }
}