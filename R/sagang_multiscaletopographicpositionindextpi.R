##' QGIS Algorithm provided by SAGA Next Gen Multi-scale topographic position index (tpi) (sagang:multiscaletopographicpositionindextpi). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TPI: Topographic Position Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SCALE_MIN: Minimum Scale 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SCALE_MAX: Maximum Scale 	Default value:	8 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SCALE_NUM: Number of Scales 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Multi-scale topographic position index (tpi)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param TPI `rasterDestination` - Topographic Position Index. Path for new raster layer.
##' @param SCALE_MIN `number` - Minimum Scale. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALE_MAX `number` - Maximum Scale. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALE_NUM `number` - Number of Scales. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TPI - outputRaster - Topographic Position Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_multiscaletopographicpositionindextpi <- function(DEM = qgisprocess:::qgis_default_value(), TPI = qgisprocess:::qgis_default_value(), SCALE_MIN = qgisprocess:::qgis_default_value(), SCALE_MAX = qgisprocess:::qgis_default_value(), SCALE_NUM = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:multiscaletopographicpositionindextpi")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:multiscaletopographicpositionindextpi", `DEM` = DEM, `TPI` = TPI, `SCALE_MIN` = SCALE_MIN, `SCALE_MAX` = SCALE_MAX, `SCALE_NUM` = SCALE_NUM,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:multiscaletopographicpositionindextpi", `DEM` = DEM, `TPI` = TPI, `SCALE_MIN` = SCALE_MIN, `SCALE_MAX` = SCALE_MAX, `SCALE_NUM` = SCALE_NUM,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TPI")
  }
}