##' QGIS Algorithm provided by SAGA Next Gen Breach depressions (sagang:breachdepressions). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NOSINKS: Preprocessed 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAX_LENGTH: Maximum Breach Channel Length 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAX_ZDEC: Maximum Elevation Decrement 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MIN_ZDROP: Minimum Elevation Drop 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Breach depressions
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param NOSINKS `rasterDestination` - Preprocessed. Path for new raster layer.
##' @param MAX_LENGTH `number` - Maximum Breach Channel Length. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_ZDEC `number` - Maximum Elevation Decrement. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MIN_ZDROP `number` - Minimum Elevation Drop. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * NOSINKS - outputRaster - Preprocessed
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_breachdepressions <- function(DEM = qgisprocess:::qgis_default_value(), NOSINKS = qgisprocess:::qgis_default_value(), MAX_LENGTH = qgisprocess:::qgis_default_value(), MAX_ZDEC = qgisprocess:::qgis_default_value(), MIN_ZDROP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:breachdepressions")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:breachdepressions", `DEM` = DEM, `NOSINKS` = NOSINKS, `MAX_LENGTH` = MAX_LENGTH, `MAX_ZDEC` = MAX_ZDEC, `MIN_ZDROP` = MIN_ZDROP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:breachdepressions", `DEM` = DEM, `NOSINKS` = NOSINKS, `MAX_LENGTH` = MAX_LENGTH, `MAX_ZDEC` = MAX_ZDEC, `MIN_ZDROP` = MIN_ZDROP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NOSINKS")
  }
}