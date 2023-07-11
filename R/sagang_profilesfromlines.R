##' QGIS Algorithm provided by SAGA Next Gen Profiles from lines (sagang:profilesfromlines). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VALUES: Values (optional) 	Argument type:	multilayer LINES: Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer NAME: Name 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names PROFILE: Profiles 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer PROFILES: Profiles 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer SPLIT: Each Line as new Profile 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Profiles from lines
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param VALUES `multilayer` - Values. .
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param NAME `field` - Name. The name of an existing field. ; delimited list of existing field names.
##' @param PROFILE `vectorDestination` - Profiles. Path for new vector layer.
##' @param PROFILES `vectorDestination` - Profiles. Path for new vector layer.
##' @param SPLIT `boolean` - Each Line as new Profile. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * PROFILE - outputVector - Profiles
##' * PROFILES - outputVector - Profiles
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_profilesfromlines <- function(DEM = qgisprocess:::qgis_default_value(), VALUES = qgisprocess:::qgis_default_value(), LINES = qgisprocess:::qgis_default_value(), NAME = qgisprocess:::qgis_default_value(), PROFILE = qgisprocess:::qgis_default_value(), PROFILES = qgisprocess:::qgis_default_value(), SPLIT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:profilesfromlines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:profilesfromlines", `DEM` = DEM, `VALUES` = VALUES, `LINES` = LINES, `NAME` = NAME, `PROFILE` = PROFILE, `PROFILES` = PROFILES, `SPLIT` = SPLIT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:profilesfromlines", `DEM` = DEM, `VALUES` = VALUES, `LINES` = LINES, `NAME` = NAME, `PROFILE` = PROFILE, `PROFILES` = PROFILES, `SPLIT` = SPLIT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "PROFILE")
  }
}