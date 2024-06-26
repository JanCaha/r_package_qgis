##' QGIS Algorithm provided by QGIS Relief (qgis:relief). This algorithm creates a shaded relief layer from digital elevation data.
##'
##' @title QGIS algorithm - Relief
##'
##' @param INPUT `raster` - Elevation layer. Path to a raster layer.
##' @param Z_FACTOR `number` - Z factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AUTO_COLORS `boolean` - Generate relief classes automatically. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COLORS `relief_colors` - Relief colors. .
##' @param OUTPUT `rasterDestination` - Relief. Path for new raster layer.
##' @param FREQUENCY_DISTRIBUTION `fileDestination` - Frequency distribution. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FREQUENCY_DISTRIBUTION - outputFile - Frequency distribution
##' * OUTPUT - outputRaster - Relief
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_relief <- function(INPUT = qgisprocess:::qgis_default_value(), Z_FACTOR = qgisprocess:::qgis_default_value(), AUTO_COLORS = qgisprocess:::qgis_default_value(), COLORS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), FREQUENCY_DISTRIBUTION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:relief")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:relief", `INPUT` = INPUT, `Z_FACTOR` = Z_FACTOR, `AUTO_COLORS` = AUTO_COLORS, `COLORS` = COLORS, `OUTPUT` = OUTPUT, `FREQUENCY_DISTRIBUTION` = FREQUENCY_DISTRIBUTION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:relief", `INPUT` = INPUT, `Z_FACTOR` = Z_FACTOR, `AUTO_COLORS` = AUTO_COLORS, `COLORS` = COLORS, `OUTPUT` = OUTPUT, `FREQUENCY_DISTRIBUTION` = FREQUENCY_DISTRIBUTION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FREQUENCY_DISTRIBUTION")
  }
}