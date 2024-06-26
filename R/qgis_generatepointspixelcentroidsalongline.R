##' QGIS Algorithm provided by QGIS Generate points (pixel centroids) along line (qgis:generatepointspixelcentroidsalongline). This algorithm generates a point vector layer from an input raster and line layer. The points correspond to the pixel centroids that intersect the line layer.
##'
##' @title QGIS algorithm - Generate points (pixel centroids) along line
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param INPUT_VECTOR `source` - Vector layer. Path to a vector layer.
##' @param OUTPUT `sink` - Points along lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Points along lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_generatepointspixelcentroidsalongline <- function(INPUT_RASTER = qgisprocess:::qgis_default_value(), INPUT_VECTOR = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:generatepointspixelcentroidsalongline")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:generatepointspixelcentroidsalongline", `INPUT_RASTER` = INPUT_RASTER, `INPUT_VECTOR` = INPUT_VECTOR, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:generatepointspixelcentroidsalongline", `INPUT_RASTER` = INPUT_RASTER, `INPUT_VECTOR` = INPUT_VECTOR, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}