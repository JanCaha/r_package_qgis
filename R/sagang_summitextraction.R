##' QGIS Algorithm provided by SAGA Next Gen Summit extraction (sagang:summitextraction). ---------------- Arguments ----------------  SURFACE: Surface 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SUMMITS: Summits 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Trend Surface 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Resampling Filter 		- 1: (1) Topographic Position Index (TPI) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SCALE_FILTER: Scale 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SCALE_TPI: Scale 	Default value:	300 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THRESHOLD: Threshold 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Summit extraction
##'
##' @param SURFACE `raster` - Surface. Path to a raster layer.
##' @param SUMMITS `vectorDestination` - Summits. Path for new vector layer.
##' @param METHOD `enum`  of `("(0) Resampling Filter", "(1) Topographic Position Index (TPI)")` - Trend Surface. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SCALE_FILTER `number` - Scale. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALE_TPI `number` - Scale. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param THRESHOLD `number` - Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SUMMITS - outputVector - Summits
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_summitextraction <- function(SURFACE = qgisprocess:::qgis_default_value(), SUMMITS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), SCALE_FILTER = qgisprocess:::qgis_default_value(), SCALE_TPI = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:summitextraction")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:summitextraction", `SURFACE` = SURFACE, `SUMMITS` = SUMMITS, `METHOD` = METHOD, `SCALE_FILTER` = SCALE_FILTER, `SCALE_TPI` = SCALE_TPI, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:summitextraction", `SURFACE` = SURFACE, `SUMMITS` = SUMMITS, `METHOD` = METHOD, `SCALE_FILTER` = SCALE_FILTER, `SCALE_TPI` = SCALE_TPI, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SUMMITS")
  }
}