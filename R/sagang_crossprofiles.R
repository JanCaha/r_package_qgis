##' QGIS Algorithm provided by SAGA Next Gen Cross profiles (sagang:crossprofiles). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LINES: Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer PROFILES: Cross Profiles 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DIST_LINE: Profile Distance 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DIST_PROFILE: Profile Length 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NUM_PROFILE: Profile Samples 	Default value:	11 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INTERPOLATION: Interpolation 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OUTPUT: Output 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) vertices 		- 1: (1) attributes 		- 2: (2) vertices and attributes 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Cross profiles
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param PROFILES `vectorDestination` - Cross Profiles. Path for new vector layer.
##' @param DIST_LINE `number` - Profile Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DIST_PROFILE `number` - Profile Length. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NUM_PROFILE `number` - Profile Samples. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INTERPOLATION `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `enum`  of `("(0) vertices", "(1) attributes", "(2) vertices and attributes")` - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * PROFILES - outputVector - Cross Profiles
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_crossprofiles <- function(DEM = qgisprocess:::qgis_default_value(), LINES = qgisprocess:::qgis_default_value(), PROFILES = qgisprocess:::qgis_default_value(), DIST_LINE = qgisprocess:::qgis_default_value(), DIST_PROFILE = qgisprocess:::qgis_default_value(), NUM_PROFILE = qgisprocess:::qgis_default_value(), INTERPOLATION = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:crossprofiles")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:crossprofiles", `DEM` = DEM, `LINES` = LINES, `PROFILES` = PROFILES, `DIST_LINE` = DIST_LINE, `DIST_PROFILE` = DIST_PROFILE, `NUM_PROFILE` = NUM_PROFILE, `INTERPOLATION` = INTERPOLATION, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:crossprofiles", `DEM` = DEM, `LINES` = LINES, `PROFILES` = PROFILES, `DIST_LINE` = DIST_LINE, `DIST_PROFILE` = DIST_PROFILE, `NUM_PROFILE` = NUM_PROFILE, `INTERPOLATION` = INTERPOLATION, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "PROFILES")
  }
}