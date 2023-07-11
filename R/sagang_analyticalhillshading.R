##' QGIS Algorithm provided by SAGA Next Gen Analytical hillshading (sagang:analyticalhillshading). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SHADE: Analytical Hillshading 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Shading Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Standard 		- 1: (1) Limited Maximum 		- 2: (2) With Shadows 		- 3: (3) Shadows Only 		- 4: (4) Ambient Occlusion 		- 5: (5) Combined Shading 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' POSITION: Sun's Position 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) azimuth and height 		- 1: (1) date and time 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' AZIMUTH: Azimuth 	Default value:	315 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DECLINATION: Height 	Default value:	45 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DATE: Day 	Default value:	2021-03-24 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME: Hour 	Default value:	12 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXAGGERATION: Exaggeration 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression UNIT: Unit 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) radians 		- 1: (1) degree 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SHADOW: Shadow 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) slim 		- 1: (1) fat 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NDIRS: Number of Directions 	Default value:	8 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RADIUS: Search Radius 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Analytical hillshading
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SHADE `rasterDestination` - Analytical Hillshading. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Standard", "(1) Limited Maximum", "(2) With Shadows", "(3) Shadows Only", "(4) Ambient Occlusion", "(5) Combined Shading")` - Shading Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param POSITION `enum`  of `("(0) azimuth and height", "(1) date and time")` - Sun's Position. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param AZIMUTH `number` - Azimuth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DECLINATION `number` - Height. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DATE `string` - Day. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME `number` - Hour. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXAGGERATION `number` - Exaggeration. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param UNIT `enum`  of `("(0) radians", "(1) degree")` - Unit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SHADOW `enum`  of `("(0) slim", "(1) fat")` - Shadow. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NDIRS `number` - Number of Directions. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RADIUS `number` - Search Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SHADE - outputRaster - Analytical Hillshading
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_analyticalhillshading <- function(ELEVATION = qgisprocess:::qgis_default_value(), SHADE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), POSITION = qgisprocess:::qgis_default_value(), AZIMUTH = qgisprocess:::qgis_default_value(), DECLINATION = qgisprocess:::qgis_default_value(), DATE = qgisprocess:::qgis_default_value(), TIME = qgisprocess:::qgis_default_value(), EXAGGERATION = qgisprocess:::qgis_default_value(), UNIT = qgisprocess:::qgis_default_value(), SHADOW = qgisprocess:::qgis_default_value(), NDIRS = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:analyticalhillshading")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:analyticalhillshading", `ELEVATION` = ELEVATION, `SHADE` = SHADE, `METHOD` = METHOD, `POSITION` = POSITION, `AZIMUTH` = AZIMUTH, `DECLINATION` = DECLINATION, `DATE` = DATE, `TIME` = TIME, `EXAGGERATION` = EXAGGERATION, `UNIT` = UNIT, `SHADOW` = SHADOW, `NDIRS` = NDIRS, `RADIUS` = RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:analyticalhillshading", `ELEVATION` = ELEVATION, `SHADE` = SHADE, `METHOD` = METHOD, `POSITION` = POSITION, `AZIMUTH` = AZIMUTH, `DECLINATION` = DECLINATION, `DATE` = DATE, `TIME` = TIME, `EXAGGERATION` = EXAGGERATION, `UNIT` = UNIT, `SHADOW` = SHADOW, `NDIRS` = NDIRS, `RADIUS` = RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHADE")
  }
}