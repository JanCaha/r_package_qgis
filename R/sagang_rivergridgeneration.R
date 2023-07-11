##' QGIS Algorithm provided by SAGA Next Gen Rivergridgeneration (sagang:rivergridgeneration). ---------------- Arguments ----------------  INPUT: Gel_ndemodell (DTM) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OUTPUT: HG Raster 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SX: Abflusspfad-Quelle, x-Wert 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SY: Abflusspfad-Quelle, y-Wert 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MX: Abflusspfad-M_ndung, x-Wert 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MY: Abflusspfad-M_ndung, y-Wert 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression Owrite: Overwrite RiverGridCells 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Rivergridgeneration
##'
##' @param INPUT `raster` - Gel_ndemodell (DTM). Path to a raster layer.
##' @param OUTPUT `rasterDestination` - HG Raster. Path for new raster layer.
##' @param SX `number` - Abflusspfad-Quelle, x-Wert. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SY `number` - Abflusspfad-Quelle, y-Wert. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MX `number` - Abflusspfad-M_ndung, x-Wert. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MY `number` - Abflusspfad-M_ndung, y-Wert. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param Owrite `boolean` - Overwrite RiverGridCells. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - HG Raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_rivergridgeneration <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), SX = qgisprocess:::qgis_default_value(), SY = qgisprocess:::qgis_default_value(), MX = qgisprocess:::qgis_default_value(), MY = qgisprocess:::qgis_default_value(), Owrite = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:rivergridgeneration")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:rivergridgeneration", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `SX` = SX, `SY` = SY, `MX` = MX, `MY` = MY, `Owrite` = Owrite,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:rivergridgeneration", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `SX` = SX, `SY` = SY, `MX` = MX, `MY` = MY, `Owrite` = Owrite,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}