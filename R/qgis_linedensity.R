##' QGIS Algorithm provided by QGIS (native c++) Line density (native:linedensity). The line density interpolation algorithm calculates a density measure of linear features which is obtained in a circular neighborhood within each raster cell. First, the length of the segment of each line that is intersected by the circular neighborhood is multiplied with the lines weight factor. In a second step, all length values are summed and divided by the area of the circular neighborhood. This process is repeated for all raster cells.
##'
##' @title QGIS algorithm - Line density
##'
##' @param INPUT `source` - Input line layer. Path to a vector layer.
##' @param WEIGHT `field` - Weight field . The name of an existing field. ; delimited list of existing field names.
##' @param RADIUS `distance` - Search radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PIXEL_SIZE `distance` - Pixel size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CREATE_OPTIONS `string` - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' @importFrom qgisprocess qgis_run_algorithm

qgis_linedensity <- function(INPUT = qgisprocess:::qgis_default_value(), WEIGHT = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), PIXEL_SIZE = qgisprocess:::qgis_default_value(), CREATE_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:linedensity")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:linedensity", `INPUT` = INPUT, `WEIGHT` = WEIGHT, `RADIUS` = RADIUS, `PIXEL_SIZE` = PIXEL_SIZE, `CREATE_OPTIONS` = CREATE_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:linedensity", `INPUT` = INPUT, `WEIGHT` = WEIGHT, `RADIUS` = RADIUS, `PIXEL_SIZE` = PIXEL_SIZE, `CREATE_OPTIONS` = CREATE_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}