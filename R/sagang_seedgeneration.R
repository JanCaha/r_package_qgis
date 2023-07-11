##' QGIS Algorithm provided by SAGA Next Gen Seed generation (sagang:seedgeneration). ---------------- Arguments ----------------  FEATURES: Features 	Argument type:	multilayer VARIANCE: Variance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SEED_GRID: Seeds Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SEED_POINTS: Seed Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer SEED_TYPE: Seed Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) minima of variance 		- 1: (1) maxima of variance 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) band width smoothing 		- 1: (1) band width search 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' BAND_WIDTH: Bandwidth (Cells) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NORMALIZE: Normalize Features 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_WEIGHTING: Weighting Function 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) no distance weighting 		- 1: (1) inverse distance to a power 		- 2: (2) exponential 		- 3: (3) gaussian 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_IDW_POWER: Power 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_BANDWIDTH: Bandwidth 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Seed generation
##'
##' @param FEATURES `multilayer` - Features. .
##' @param VARIANCE `rasterDestination` - Variance. Path for new raster layer.
##' @param SEED_GRID `rasterDestination` - Seeds Grid. Path for new raster layer.
##' @param SEED_POINTS `vectorDestination` - Seed Points. Path for new vector layer.
##' @param SEED_TYPE `enum`  of `("(0) minima of variance", "(1) maxima of variance")` - Seed Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) band width smoothing", "(1) band width search")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BAND_WIDTH `number` - Bandwidth (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NORMALIZE `boolean` - Normalize Features. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_WEIGHTING `enum`  of `("(0) no distance weighting", "(1) inverse distance to a power", "(2) exponential", "(3) gaussian")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Power. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_BANDWIDTH `number` - Bandwidth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SEED_GRID - outputRaster - Seeds Grid
##' * SEED_POINTS - outputVector - Seed Points
##' * VARIANCE - outputRaster - Variance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_seedgeneration <- function(FEATURES = qgisprocess:::qgis_default_value(), VARIANCE = qgisprocess:::qgis_default_value(), SEED_GRID = qgisprocess:::qgis_default_value(), SEED_POINTS = qgisprocess:::qgis_default_value(), SEED_TYPE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), BAND_WIDTH = qgisprocess:::qgis_default_value(), NORMALIZE = qgisprocess:::qgis_default_value(), DW_WEIGHTING = qgisprocess:::qgis_default_value(), DW_IDW_POWER = qgisprocess:::qgis_default_value(), DW_BANDWIDTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:seedgeneration")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:seedgeneration", `FEATURES` = FEATURES, `VARIANCE` = VARIANCE, `SEED_GRID` = SEED_GRID, `SEED_POINTS` = SEED_POINTS, `SEED_TYPE` = SEED_TYPE, `METHOD` = METHOD, `BAND_WIDTH` = BAND_WIDTH, `NORMALIZE` = NORMALIZE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:seedgeneration", `FEATURES` = FEATURES, `VARIANCE` = VARIANCE, `SEED_GRID` = SEED_GRID, `SEED_POINTS` = SEED_POINTS, `SEED_TYPE` = SEED_TYPE, `METHOD` = METHOD, `BAND_WIDTH` = BAND_WIDTH, `NORMALIZE` = NORMALIZE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SEED_GRID")
  }
}