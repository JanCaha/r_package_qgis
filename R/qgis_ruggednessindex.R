##' QGIS Algorithm provided by QGIS (native c++) Ruggedness index (native:ruggednessindex). This algorithm calculates the quantitative measurement of terrain heterogeneity described by Riley et al. (1999).  It is calculated for every location, by summarizing the change in elevation within the 3x3 pixel grid. Each pixel contains the difference in elevation from a center cell and the 8 cells surrounding it.
##'
##' @title QGIS algorithm - Ruggedness index
##'
##' @param INPUT `raster` - Elevation layer. Path to a raster layer.
##' @param Z_FACTOR `number` - Z factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Ruggedness. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Ruggedness
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_ruggednessindex <- function(INPUT = qgisprocess:::qgis_default_value(), Z_FACTOR = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:ruggednessindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:ruggednessindex", `INPUT` = INPUT, `Z_FACTOR` = Z_FACTOR, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:ruggednessindex", `INPUT` = INPUT, `Z_FACTOR` = Z_FACTOR, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}