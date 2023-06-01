##' QGIS Algorithm provided by SAGA Ls-factor, field based (saga:lsfactorfieldbased)
##'
##' @title QGIS algorithm Ls-factor, field based
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param FIELDS `source` - Fields. Path to a vector layer.
##' @param STATISTICS `vectorDestination` - Field Statistics. Path for new vector layer.
##' @param UPSLOPE_AREA `rasterDestination` - Upslope Length Factor. Path for new raster layer.
##' @param UPSLOPE_LENGTH `rasterDestination` - Effective Flow Length. Path for new raster layer.
##' @param UPSLOPE_SLOPE `rasterDestination` - Upslope Slope. Path for new raster layer.
##' @param LS_FACTOR `rasterDestination` - LS Factor. Path for new raster layer.
##' @param BALANCE `rasterDestination` - Sediment Balance. Path for new raster layer.
##' @param METHOD `enum`  of `("[0] Moore & Nieber 1989", "[1] Desmet & Govers 1996", "[2] Wischmeier & Smith 1978")` - LS Calculation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD_SLOPE `enum`  of `("[0] local slope", "[1] distance weighted average catchment slope")` - Type of Slope. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD_AREA `enum`  of `("[0] specific catchment area (contour length simply as cell size)", "[1] specific catchment area (contour length dependent on aspect)", "[2] catchment length (square root of catchment area)", "[3] effective flow length")` - Specific Catchment Area. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param STOP_AT_EDGE `boolean` - Stop at Edge. 1 for true/yes. 0 for false/no.
##' @param EROSIVITY `number` - Rill/Interrill Erosivity. A numeric value.
##' @param STABILITY `enum`  of `("[0] stable", "[1] instable (thawing)")` - Stability. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BALANCE - outputRaster - Sediment Balance
##' * LS_FACTOR - outputRaster - LS Factor
##' * STATISTICS - outputVector - Field Statistics
##' * UPSLOPE_AREA - outputRaster - Upslope Length Factor
##' * UPSLOPE_LENGTH - outputRaster - Effective Flow Length
##' * UPSLOPE_SLOPE - outputRaster - Upslope Slope
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_lsfactorfieldbased <- function(DEM = qgisprocess:::qgis_default_value(), FIELDS = qgisprocess:::qgis_default_value(), STATISTICS = qgisprocess:::qgis_default_value(), UPSLOPE_AREA = qgisprocess:::qgis_default_value(), UPSLOPE_LENGTH = qgisprocess:::qgis_default_value(), UPSLOPE_SLOPE = qgisprocess:::qgis_default_value(), LS_FACTOR = qgisprocess:::qgis_default_value(), BALANCE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), METHOD_SLOPE = qgisprocess:::qgis_default_value(), METHOD_AREA = qgisprocess:::qgis_default_value(), STOP_AT_EDGE = qgisprocess:::qgis_default_value(), EROSIVITY = qgisprocess:::qgis_default_value(), STABILITY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:lsfactorfieldbased")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:lsfactorfieldbased", `DEM` = DEM, `FIELDS` = FIELDS, `STATISTICS` = STATISTICS, `UPSLOPE_AREA` = UPSLOPE_AREA, `UPSLOPE_LENGTH` = UPSLOPE_LENGTH, `UPSLOPE_SLOPE` = UPSLOPE_SLOPE, `LS_FACTOR` = LS_FACTOR, `BALANCE` = BALANCE, `METHOD` = METHOD, `METHOD_SLOPE` = METHOD_SLOPE, `METHOD_AREA` = METHOD_AREA, `STOP_AT_EDGE` = STOP_AT_EDGE, `EROSIVITY` = EROSIVITY, `STABILITY` = STABILITY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:lsfactorfieldbased", `DEM` = DEM, `FIELDS` = FIELDS, `STATISTICS` = STATISTICS, `UPSLOPE_AREA` = UPSLOPE_AREA, `UPSLOPE_LENGTH` = UPSLOPE_LENGTH, `UPSLOPE_SLOPE` = UPSLOPE_SLOPE, `LS_FACTOR` = LS_FACTOR, `BALANCE` = BALANCE, `METHOD` = METHOD, `METHOD_SLOPE` = METHOD_SLOPE, `METHOD_AREA` = METHOD_AREA, `STOP_AT_EDGE` = STOP_AT_EDGE, `EROSIVITY` = EROSIVITY, `STABILITY` = STABILITY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BALANCE")
  }
}