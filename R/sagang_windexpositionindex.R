##' QGIS Algorithm provided by SAGA Next Gen Wind exposition index (sagang:windexpositionindex). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer EXPOSITION: Wind Exposition 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAXDIST: Search Distance (km) 	Default value:	300 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STEP: Angular Step Size (Degree) 	Default value:	15 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OLDVER: Old Version 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ACCEL: Acceleration 	Default value:	1.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PYRAMIDS: Elevation Averaging 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Wind exposition index
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param EXPOSITION `rasterDestination` - Wind Exposition. Path for new raster layer.
##' @param MAXDIST `number` - Search Distance (km). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STEP `number` - Angular Step Size (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OLDVER `boolean` - Old Version. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ACCEL `number` - Acceleration. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PYRAMIDS `boolean` - Elevation Averaging. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EXPOSITION - outputRaster - Wind Exposition
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_windexpositionindex <- function(DEM = qgisprocess:::qgis_default_value(), EXPOSITION = qgisprocess:::qgis_default_value(), MAXDIST = qgisprocess:::qgis_default_value(), STEP = qgisprocess:::qgis_default_value(), OLDVER = qgisprocess:::qgis_default_value(), ACCEL = qgisprocess:::qgis_default_value(), PYRAMIDS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:windexpositionindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:windexpositionindex", `DEM` = DEM, `EXPOSITION` = EXPOSITION, `MAXDIST` = MAXDIST, `STEP` = STEP, `OLDVER` = OLDVER, `ACCEL` = ACCEL, `PYRAMIDS` = PYRAMIDS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:windexpositionindex", `DEM` = DEM, `EXPOSITION` = EXPOSITION, `MAXDIST` = MAXDIST, `STEP` = STEP, `OLDVER` = OLDVER, `ACCEL` = ACCEL, `PYRAMIDS` = PYRAMIDS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EXPOSITION")
  }
}