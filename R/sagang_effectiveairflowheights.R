##' QGIS Algorithm provided by SAGA Next Gen Effective air flow heights (sagang:effectiveairflowheights). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DIR: Wind Direction (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DIR_UNITS: Wind Direction Units 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) radians 		- 1: (1) degree 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' LEN: Wind Speed (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LEN_SCALE: Scaling 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression AFH: Effective Air Flow Heights 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAXDIST: Search Distance (km) 	Default value:	300 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DIR_CONST: Constant Wind Direction 	Default value:	135 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OLDVER: Old Version 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ACCEL: Acceleration 	Default value:	1.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PYRAMIDS: Elevation Averaging 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LEE: Windward Factor 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LUV: Luv Factor 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Effective air flow heights
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param DIR `raster` - Wind Direction. Path to a raster layer.
##' @param DIR_UNITS `enum`  of `("(0) radians", "(1) degree")` - Wind Direction Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LEN `raster` - Wind Speed. Path to a raster layer.
##' @param LEN_SCALE `number` - Scaling. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AFH `rasterDestination` - Effective Air Flow Heights. Path for new raster layer.
##' @param MAXDIST `number` - Search Distance (km). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DIR_CONST `number` - Constant Wind Direction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OLDVER `boolean` - Old Version. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ACCEL `number` - Acceleration. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PYRAMIDS `boolean` - Elevation Averaging. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LEE `number` - Windward Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LUV `number` - Luv Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * AFH - outputRaster - Effective Air Flow Heights
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_effectiveairflowheights <- function(DEM = qgisprocess:::qgis_default_value(), DIR = qgisprocess:::qgis_default_value(), DIR_UNITS = qgisprocess:::qgis_default_value(), LEN = qgisprocess:::qgis_default_value(), LEN_SCALE = qgisprocess:::qgis_default_value(), AFH = qgisprocess:::qgis_default_value(), MAXDIST = qgisprocess:::qgis_default_value(), DIR_CONST = qgisprocess:::qgis_default_value(), OLDVER = qgisprocess:::qgis_default_value(), ACCEL = qgisprocess:::qgis_default_value(), PYRAMIDS = qgisprocess:::qgis_default_value(), LEE = qgisprocess:::qgis_default_value(), LUV = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:effectiveairflowheights")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:effectiveairflowheights", `DEM` = DEM, `DIR` = DIR, `DIR_UNITS` = DIR_UNITS, `LEN` = LEN, `LEN_SCALE` = LEN_SCALE, `AFH` = AFH, `MAXDIST` = MAXDIST, `DIR_CONST` = DIR_CONST, `OLDVER` = OLDVER, `ACCEL` = ACCEL, `PYRAMIDS` = PYRAMIDS, `LEE` = LEE, `LUV` = LUV,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:effectiveairflowheights", `DEM` = DEM, `DIR` = DIR, `DIR_UNITS` = DIR_UNITS, `LEN` = LEN, `LEN_SCALE` = LEN_SCALE, `AFH` = AFH, `MAXDIST` = MAXDIST, `DIR_CONST` = DIR_CONST, `OLDVER` = OLDVER, `ACCEL` = ACCEL, `PYRAMIDS` = PYRAMIDS, `LEE` = LEE, `LUV` = LUV,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "AFH")
  }
}