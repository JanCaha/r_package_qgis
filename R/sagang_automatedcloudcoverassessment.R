##' QGIS Algorithm provided by SAGA Next Gen Automated cloud cover assessment (sagang:automatedcloudcoverassessment). ---------------- Arguments ----------------  BAND2: Green 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND3: Red 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND4: NIR 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND5: SWIR 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND6: Thermal 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CLOUD: Cloud Cover 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FILTER: Apply post-processing filter to remove small holes 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression B56C: B56 Composite (step 6) 	Default value:	225 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression B45R: B45 Ratio: Desert detection (step 10) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CSIG: Always use cloud signature (step 14) 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PASS2: Bypass second-pass processing, and merge warm (not ambiguous) and cold clouds 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SHADOW: Include a category for cloud shadows 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Automated cloud cover assessment
##'
##' @param BAND2 `raster` - Green. Path to a raster layer.
##' @param BAND3 `raster` - Red. Path to a raster layer.
##' @param BAND4 `raster` - NIR. Path to a raster layer.
##' @param BAND5 `raster` - SWIR. Path to a raster layer.
##' @param BAND6 `raster` - Thermal. Path to a raster layer.
##' @param CLOUD `rasterDestination` - Cloud Cover. Path for new raster layer.
##' @param FILTER `boolean` - Apply post-processing filter to remove small holes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param B56C `number` - B56 Composite (step 6). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param B45R `number` - B45 Ratio: Desert detection (step 10). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CSIG `boolean` - Always use cloud signature (step 14). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PASS2 `boolean` - Bypass second-pass processing, and merge warm (not ambiguous) and cold clouds. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SHADOW `boolean` - Include a category for cloud shadows. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLOUD - outputRaster - Cloud Cover
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_automatedcloudcoverassessment <- function(BAND2 = qgisprocess:::qgis_default_value(), BAND3 = qgisprocess:::qgis_default_value(), BAND4 = qgisprocess:::qgis_default_value(), BAND5 = qgisprocess:::qgis_default_value(), BAND6 = qgisprocess:::qgis_default_value(), CLOUD = qgisprocess:::qgis_default_value(), FILTER = qgisprocess:::qgis_default_value(), B56C = qgisprocess:::qgis_default_value(), B45R = qgisprocess:::qgis_default_value(), CSIG = qgisprocess:::qgis_default_value(), PASS2 = qgisprocess:::qgis_default_value(), SHADOW = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:automatedcloudcoverassessment")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:automatedcloudcoverassessment", `BAND2` = BAND2, `BAND3` = BAND3, `BAND4` = BAND4, `BAND5` = BAND5, `BAND6` = BAND6, `CLOUD` = CLOUD, `FILTER` = FILTER, `B56C` = B56C, `B45R` = B45R, `CSIG` = CSIG, `PASS2` = PASS2, `SHADOW` = SHADOW,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:automatedcloudcoverassessment", `BAND2` = BAND2, `BAND3` = BAND3, `BAND4` = BAND4, `BAND5` = BAND5, `BAND6` = BAND6, `CLOUD` = CLOUD, `FILTER` = FILTER, `B56C` = B56C, `B45R` = B45R, `CSIG` = CSIG, `PASS2` = PASS2, `SHADOW` = SHADOW,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLOUD")
  }
}