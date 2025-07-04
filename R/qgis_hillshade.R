##' QGIS Algorithm provided by QGIS (native c++) Hillshade (native:hillshade). Calculates the hillshade of a Digital Terrain Model. This algorithm calculates the hillshade of the Digital Terrain Model in input.  The shading of the layer is calculated according to the sun position (azimuth and elevation).
##'
##' @title QGIS algorithm - Hillshade
##'
##' @param INPUT `raster` - Elevation layer. Path to a raster layer.
##' @param Z_FACTOR `number` - Z factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AZIMUTH `number` - Azimuth (horizontal angle). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param V_ANGLE `number` - Vertical angle. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_hillshade <- function(INPUT = qgisprocess:::qgis_default_value(), Z_FACTOR = qgisprocess:::qgis_default_value(), AZIMUTH = qgisprocess:::qgis_default_value(), V_ANGLE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:hillshade")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:hillshade", `INPUT` = INPUT, `Z_FACTOR` = Z_FACTOR, `AZIMUTH` = AZIMUTH, `V_ANGLE` = V_ANGLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:hillshade", `INPUT` = INPUT, `Z_FACTOR` = Z_FACTOR, `AZIMUTH` = AZIMUTH, `V_ANGLE` = V_ANGLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}