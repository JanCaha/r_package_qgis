##' QGIS Algorithm provided by GDAL Hillshade (gdal:hillshade)
##'
##' @title QGIS algorithm Hillshade
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param Z_FACTOR `number` - Z factor (vertical exaggeration). A numeric value.
##' @param SCALE `number` - Scale (ratio of vertical units to horizontal). A numeric value.
##' @param AZIMUTH `number` - Azimuth of the light. A numeric value.
##' @param ALTITUDE `number` - Altitude of the light. A numeric value.
##' @param COMPUTE_EDGES `boolean` - Compute edges. 1 for true/yes. 0 for false/no.
##' @param ZEVENBERGEN `boolean` - Use Zevenbergen&Thorne formula instead of the Horn's one. 1 for true/yes. 0 for false/no.
##' @param COMBINED `boolean` - Combined shading. 1 for true/yes. 0 for false/no.
##' @param MULTIDIRECTIONAL `boolean` - Multidirectional shading. 1 for true/yes. 0 for false/no.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `rasterDestination` - Hillshade. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Hillshade
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_hillshade <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), Z_FACTOR = qgisprocess:::qgis_default_value(), SCALE = qgisprocess:::qgis_default_value(), AZIMUTH = qgisprocess:::qgis_default_value(), ALTITUDE = qgisprocess:::qgis_default_value(), COMPUTE_EDGES = qgisprocess:::qgis_default_value(), ZEVENBERGEN = qgisprocess:::qgis_default_value(), COMBINED = qgisprocess:::qgis_default_value(), MULTIDIRECTIONAL = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:hillshade")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:hillshade", `INPUT` = INPUT, `BAND` = BAND, `Z_FACTOR` = Z_FACTOR, `SCALE` = SCALE, `AZIMUTH` = AZIMUTH, `ALTITUDE` = ALTITUDE, `COMPUTE_EDGES` = COMPUTE_EDGES, `ZEVENBERGEN` = ZEVENBERGEN, `COMBINED` = COMBINED, `MULTIDIRECTIONAL` = MULTIDIRECTIONAL, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:hillshade", `INPUT` = INPUT, `BAND` = BAND, `Z_FACTOR` = Z_FACTOR, `SCALE` = SCALE, `AZIMUTH` = AZIMUTH, `ALTITUDE` = ALTITUDE, `COMPUTE_EDGES` = COMPUTE_EDGES, `ZEVENBERGEN` = ZEVENBERGEN, `COMBINED` = COMBINED, `MULTIDIRECTIONAL` = MULTIDIRECTIONAL, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}