##' QGIS Algorithm provided by QGIS (native c++) Generate points (pixel centroids) inside polygons (native:generatepointspixelcentroidsinsidepolygons). Generates pixel centroids for the raster area falling inside polygons. Used to generate points for further raster sampling.
##'
##' @title QGIS algorithm - Generate points (pixel centroids) inside polygons
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param INPUT_VECTOR `source` - Vector layer. Path to a vector layer.
##' @param OUTPUT `sink` - Pixel centroids. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Pixel centroids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_generatepointspixelcentroidsinsidepolygons <- function(INPUT_RASTER = qgisprocess:::qgis_default_value(), INPUT_VECTOR = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:generatepointspixelcentroidsinsidepolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:generatepointspixelcentroidsinsidepolygons", `INPUT_RASTER` = INPUT_RASTER, `INPUT_VECTOR` = INPUT_VECTOR, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:generatepointspixelcentroidsinsidepolygons", `INPUT_RASTER` = INPUT_RASTER, `INPUT_VECTOR` = INPUT_VECTOR, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}