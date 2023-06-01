##' QGIS Algorithm provided by GDAL Sieve (gdal:sieve)
##'
##' @title QGIS algorithm Sieve
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param THRESHOLD `number` - Threshold. A numeric value.
##' @param EIGHT_CONNECTEDNESS `boolean` - Use 8-connectedness. 1 for true/yes. 0 for false/no.
##' @param NO_MASK `boolean` - Do not use the default validity mask for the input band. 1 for true/yes. 0 for false/no.
##' @param MASK_LAYER `raster` - Validity mask. Path to a raster layer.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `rasterDestination` - Sieved. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Sieved
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_sieve <- function(INPUT = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(), EIGHT_CONNECTEDNESS = qgisprocess:::qgis_default_value(), NO_MASK = qgisprocess:::qgis_default_value(), MASK_LAYER = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:sieve")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:sieve", `INPUT` = INPUT, `THRESHOLD` = THRESHOLD, `EIGHT_CONNECTEDNESS` = EIGHT_CONNECTEDNESS, `NO_MASK` = NO_MASK, `MASK_LAYER` = MASK_LAYER, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:sieve", `INPUT` = INPUT, `THRESHOLD` = THRESHOLD, `EIGHT_CONNECTEDNESS` = EIGHT_CONNECTEDNESS, `NO_MASK` = NO_MASK, `MASK_LAYER` = MASK_LAYER, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}