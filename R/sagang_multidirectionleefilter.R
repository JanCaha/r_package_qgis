##' QGIS Algorithm provided by SAGA Next Gen Multi direction lee filter (sagang:multidirectionleefilter). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Filtered Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STDDEV: Minimum Standard Deviation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIR: Direction of Minimum Standard Deviation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer NOISE_ABS: Estimated Noise (absolute) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NOISE_REL: Estimated Noise (relative) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression WEIGHTED: Weighted 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) noise variance given as absolute value 		- 1: (1) noise variance given relative to mean standard deviation 		- 2: (2) original calculation (Ringeler) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Multi direction lee filter
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param RESULT `rasterDestination` - Filtered Grid. Path for new raster layer.
##' @param STDDEV `rasterDestination` - Minimum Standard Deviation. Path for new raster layer.
##' @param DIR `rasterDestination` - Direction of Minimum Standard Deviation. Path for new raster layer.
##' @param NOISE_ABS `number` - Estimated Noise (absolute). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NOISE_REL `number` - Estimated Noise (relative). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param WEIGHTED `boolean` - Weighted. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) noise variance given as absolute value", "(1) noise variance given relative to mean standard deviation", "(2) original calculation (Ringeler)")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DIR - outputRaster - Direction of Minimum Standard Deviation
##' * RESULT - outputRaster - Filtered Grid
##' * STDDEV - outputRaster - Minimum Standard Deviation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_multidirectionleefilter <- function(INPUT = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), STDDEV = qgisprocess:::qgis_default_value(), DIR = qgisprocess:::qgis_default_value(), NOISE_ABS = qgisprocess:::qgis_default_value(), NOISE_REL = qgisprocess:::qgis_default_value(), WEIGHTED = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:multidirectionleefilter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:multidirectionleefilter", `INPUT` = INPUT, `RESULT` = RESULT, `STDDEV` = STDDEV, `DIR` = DIR, `NOISE_ABS` = NOISE_ABS, `NOISE_REL` = NOISE_REL, `WEIGHTED` = WEIGHTED, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:multidirectionleefilter", `INPUT` = INPUT, `RESULT` = RESULT, `STDDEV` = STDDEV, `DIR` = DIR, `NOISE_ABS` = NOISE_ABS, `NOISE_REL` = NOISE_REL, `WEIGHTED` = WEIGHTED, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DIR")
  }
}