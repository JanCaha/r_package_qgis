##' QGIS Algorithm provided by QGIS (native c++) Sample raster values (native:rastersampling). Samples raster values under a set of points. This algorithm creates a new vector layer with the same attributes of the input layer and the raster values corresponding on the point location.  If the raster layer has more than one band, all the band values are sampled.
##'
##' @title QGIS algorithm - Sample raster values
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param RASTERCOPY `raster` - Raster layer. Path to a raster layer.
##' @param COLUMN_PREFIX `string` - Output column prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Sampled. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Sampled
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_rastersampling <- function(INPUT = qgisprocess:::qgis_default_value(), RASTERCOPY = qgisprocess:::qgis_default_value(), COLUMN_PREFIX = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:rastersampling")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:rastersampling", `INPUT` = INPUT, `RASTERCOPY` = RASTERCOPY, `COLUMN_PREFIX` = COLUMN_PREFIX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:rastersampling", `INPUT` = INPUT, `RASTERCOPY` = RASTERCOPY, `COLUMN_PREFIX` = COLUMN_PREFIX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}