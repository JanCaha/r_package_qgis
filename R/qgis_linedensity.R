##' QGIS Algorithm provided by QGIS (native c++) Line density (native:linedensity)
##'
##' @title QGIS algorithm Line density
##'
##' @param INPUT `source` - Input line layer. Path to a vector layer.
##' @param WEIGHT `field` - Weight field . The name of an existing field. ; delimited list of existing field names.
##' @param RADIUS `distance` - Search radius. A numeric value.
##' @param PIXEL_SIZE `distance` - Pixel size. A numeric value.
##' @param OUTPUT `rasterDestination` - Line density raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Line density raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_linedensity <- function(INPUT = qgisprocess::qgis_default_value(), WEIGHT = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), PIXEL_SIZE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:linedensity")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:linedensity", `INPUT` = INPUT, `WEIGHT` = WEIGHT, `RADIUS` = RADIUS, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:linedensity", `INPUT` = INPUT, `WEIGHT` = WEIGHT, `RADIUS` = RADIUS, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}