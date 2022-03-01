##' QGIS Algorithm provided by SAGA Seed generation (saga:seedgeneration)
##'
##' @title QGIS algorithm Seed generation
##'
##' @param FEATURES `multilayer` - Features. .
##' @param SEED_TYPE `enum`  of `("[0] minima", "[1] maxima")` - Seed Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("[0] band width smoothing", "[1] band width search")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BAND_WIDTH `number` - Bandwidth (Cells). A numeric value.
##' @param NORMALIZE `boolean` - Normalize Features. 1 for true/yes. 0 for false/no.
##' @param DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DW_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param SEED_GRID `rasterDestination` - Seeds Grid. Path for new raster layer.
##' @param VARIANCE `rasterDestination` - Variance. Path for new raster layer.
##' @param SEED_POINTS `vectorDestination` - Seeds Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SEED_GRID - outputRaster - Seeds Grid
##' * SEED_POINTS - outputVector - Seeds Points
##' * VARIANCE - outputRaster - Variance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_seedgeneration <- function(FEATURES = qgisprocess::qgis_default_value(), SEED_TYPE = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), BAND_WIDTH = qgisprocess::qgis_default_value(), NORMALIZE = qgisprocess::qgis_default_value(), DW_WEIGHTING = qgisprocess::qgis_default_value(), DW_IDW_POWER = qgisprocess::qgis_default_value(), DW_IDW_OFFSET = qgisprocess::qgis_default_value(), DW_BANDWIDTH = qgisprocess::qgis_default_value(), SEED_GRID = qgisprocess::qgis_default_value(), VARIANCE = qgisprocess::qgis_default_value(), SEED_POINTS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:seedgeneration")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:seedgeneration", `FEATURES` = FEATURES, `SEED_TYPE` = SEED_TYPE, `METHOD` = METHOD, `BAND_WIDTH` = BAND_WIDTH, `NORMALIZE` = NORMALIZE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH, `SEED_GRID` = SEED_GRID, `VARIANCE` = VARIANCE, `SEED_POINTS` = SEED_POINTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:seedgeneration", `FEATURES` = FEATURES, `SEED_TYPE` = SEED_TYPE, `METHOD` = METHOD, `BAND_WIDTH` = BAND_WIDTH, `NORMALIZE` = NORMALIZE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH, `SEED_GRID` = SEED_GRID, `VARIANCE` = VARIANCE, `SEED_POINTS` = SEED_POINTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SEED_GRID")
  }
}