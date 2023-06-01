##' QGIS Algorithm provided by GRASS r.resamp.filter (grass7:r.resamp.filter)
##'
##' @title QGIS algorithm r.resamp.filter
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param filter `enum`  of `("box", "bartlett", "gauss", "normal", "hermite", "sinc", "lanczos1", "lanczos2", "lanczos3", "hann", "hamming", "blackman")` - Filter kernel(s). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param radius `string` - Filter radius for each filter (comma separated list of float if multiple). String value.
##' @param x_radius `string` - Filter radius (horizontal) for each filter (comma separated list of float if multiple). String value.
##' @param y_radius `string` - Filter radius (vertical) for each filter (comma separated list of float if multiple). String value.
##' @param .n `boolean` - Propagate NULLs. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param output `rasterDestination` - Resampled Filter. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Resampled Filter
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_resamp_filter <- function(input = qgisprocess:::qgis_default_value(), filter = qgisprocess:::qgis_default_value(), radius = qgisprocess:::qgis_default_value(), x_radius = qgisprocess:::qgis_default_value(), y_radius = qgisprocess:::qgis_default_value(), .n = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.resamp.filter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.resamp.filter", `input` = input, `filter` = filter, `radius` = radius, `x_radius` = x_radius, `y_radius` = y_radius, `-n` = .n, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.resamp.filter", `input` = input, `filter` = filter, `radius` = radius, `x_radius` = x_radius, `y_radius` = y_radius, `-n` = .n, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}