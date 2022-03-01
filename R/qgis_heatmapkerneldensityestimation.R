##' QGIS Algorithm provided by QGIS Heatmap (Kernel Density Estimation) (qgis:heatmapkerneldensityestimation)
##'
##' @title QGIS algorithm Heatmap (Kernel Density Estimation)
##'
##' @param INPUT `source` - Point layer. Path to a vector layer.
##' @param RADIUS `distance` - Radius. A numeric value.
##' @param RADIUS_FIELD `field` - Radius from field. The name of an existing field. ; delimited list of existing field names.
##' @param PIXEL_SIZE `number` - Output raster size. A numeric value.
##' @param WEIGHT_FIELD `field` - Weight from field. The name of an existing field. ; delimited list of existing field names.
##' @param KERNEL `enum`  of `("Quartic", "Triangular", "Uniform", "Triweight", "Epanechnikov")` - Kernel shape. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DECAY `number` - Decay ratio (Triangular kernels only). A numeric value.
##' @param OUTPUT_VALUE `enum`  of `("Raw", "Scaled")` - Output value scaling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Heatmap. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Heatmap
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_heatmapkerneldensityestimation <- function(INPUT = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), RADIUS_FIELD = qgisprocess::qgis_default_value(), PIXEL_SIZE = qgisprocess::qgis_default_value(), WEIGHT_FIELD = qgisprocess::qgis_default_value(), KERNEL = qgisprocess::qgis_default_value(), DECAY = qgisprocess::qgis_default_value(), OUTPUT_VALUE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:heatmapkerneldensityestimation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:heatmapkerneldensityestimation", `INPUT` = INPUT, `RADIUS` = RADIUS, `RADIUS_FIELD` = RADIUS_FIELD, `PIXEL_SIZE` = PIXEL_SIZE, `WEIGHT_FIELD` = WEIGHT_FIELD, `KERNEL` = KERNEL, `DECAY` = DECAY, `OUTPUT_VALUE` = OUTPUT_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:heatmapkerneldensityestimation", `INPUT` = INPUT, `RADIUS` = RADIUS, `RADIUS_FIELD` = RADIUS_FIELD, `PIXEL_SIZE` = PIXEL_SIZE, `WEIGHT_FIELD` = WEIGHT_FIELD, `KERNEL` = KERNEL, `DECAY` = DECAY, `OUTPUT_VALUE` = OUTPUT_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}