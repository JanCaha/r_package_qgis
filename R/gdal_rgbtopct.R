##' QGIS Algorithm provided by GDAL RGB to PCT (gdal:rgbtopct)
##'
##' @title QGIS algorithm RGB to PCT
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param NCOLORS `number` - Number of colors. A numeric value.
##' @param OUTPUT `rasterDestination` - RGB to PCT. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - RGB to PCT
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_rgbtopct <- function(INPUT = qgisprocess::qgis_default_value(), NCOLORS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:rgbtopct")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:rgbtopct", `INPUT` = INPUT, `NCOLORS` = NCOLORS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:rgbtopct", `INPUT` = INPUT, `NCOLORS` = NCOLORS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}