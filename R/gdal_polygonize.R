##' QGIS Algorithm provided by GDAL Polygonize (raster to vector) (gdal:polygonize)
##'
##' @title QGIS algorithm Polygonize (raster to vector)
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param FIELD `string` - Name of the field to create. String value.
##' @param EIGHT_CONNECTEDNESS `boolean` - Use 8-connectedness. 1 for true/yes. 0 for false/no.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `vectorDestination` - Vectorized. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Vectorized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_polygonize <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), EIGHT_CONNECTEDNESS = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:polygonize")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:polygonize", `INPUT` = INPUT, `BAND` = BAND, `FIELD` = FIELD, `EIGHT_CONNECTEDNESS` = EIGHT_CONNECTEDNESS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:polygonize", `INPUT` = INPUT, `BAND` = BAND, `FIELD` = FIELD, `EIGHT_CONNECTEDNESS` = EIGHT_CONNECTEDNESS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}