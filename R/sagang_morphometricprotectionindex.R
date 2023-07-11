##' QGIS Algorithm provided by SAGA Next Gen Morphometric protection index (sagang:morphometricprotectionindex). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PROTECTION: Protection Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RADIUS: Radius 	Default value:	2000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Morphometric protection index
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param PROTECTION `rasterDestination` - Protection Index. Path for new raster layer.
##' @param RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * PROTECTION - outputRaster - Protection Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_morphometricprotectionindex <- function(DEM = qgisprocess:::qgis_default_value(), PROTECTION = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:morphometricprotectionindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:morphometricprotectionindex", `DEM` = DEM, `PROTECTION` = PROTECTION, `RADIUS` = RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:morphometricprotectionindex", `DEM` = DEM, `PROTECTION` = PROTECTION, `RADIUS` = RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "PROTECTION")
  }
}