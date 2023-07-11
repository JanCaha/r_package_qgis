##' QGIS Algorithm provided by SAGA Next Gen Multi-band variation (sagang:multibandvariation). ---------------- Arguments ----------------  BANDS: Bands 	Argument type:	multilayer MEAN: Mean Distance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STDDEV: Standard Deviation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIFF: Distance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RADIUS: Radius (Cells) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_WEIGHTING: Weighting Function 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) no distance weighting 		- 1: (1) inverse distance to a power 		- 2: (2) exponential 		- 3: (3) gaussian 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_IDW_POWER: Power 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_BANDWIDTH: Bandwidth 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Multi-band variation
##'
##' @param BANDS `multilayer` - Bands. .
##' @param MEAN `rasterDestination` - Mean Distance. Path for new raster layer.
##' @param STDDEV `rasterDestination` - Standard Deviation. Path for new raster layer.
##' @param DIFF `rasterDestination` - Distance. Path for new raster layer.
##' @param RADIUS `number` - Radius (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' * DIFF - outputRaster - Distance
##' * MEAN - outputRaster - Mean Distance
##' * STDDEV - outputRaster - Standard Deviation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_multibandvariation <- function(BANDS = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(), STDDEV = qgisprocess:::qgis_default_value(), DIFF = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), DW_WEIGHTING = qgisprocess:::qgis_default_value(), DW_IDW_POWER = qgisprocess:::qgis_default_value(), DW_BANDWIDTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:multibandvariation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:multibandvariation", `BANDS` = BANDS, `MEAN` = MEAN, `STDDEV` = STDDEV, `DIFF` = DIFF, `RADIUS` = RADIUS, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:multibandvariation", `BANDS` = BANDS, `MEAN` = MEAN, `STDDEV` = STDDEV, `DIFF` = DIFF, `RADIUS` = RADIUS, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DIFF")
  }
}