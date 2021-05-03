##' QGIS Algorithm provided by GRASS r.fill.stats (grass7:r.fill.stats)
##'
##' @title QGIS algorithm r.fill.stats
##'
##' @param input `raster` - Input raster layer with data gaps to fill. Path to a raster layer.
##' @param .k `boolean` - Preserve original cell values (By default original values are smoothed). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -k.
##' @param mode `enum`  of `("wmean", "mean", "median", "mode")` - Statistic for interpolated cell values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .m `boolean` - Interpret distance as map units, not number of cells (Do not select with geodetic coordinates). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -m.
##' @param distance `number` - Distance threshold (default: in cells) for interpolation. A numeric value.
##' @param minimum `number` - Minimum input data value to include in interpolation. A numeric value.
##' @param maximum `number` - Maximum input data value to include in interpolation. A numeric value.
##' @param power `number` - Power coefficient for IDW interpolation. A numeric value.
##' @param cells `number` - Minimum number of data cells within search radius. A numeric value.
##' @param output `rasterDestination` - Output Map. Path for new raster layer.
##' @param uncertainty `rasterDestination` - Uncertainty Map. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Output Map
##' * uncertainty - outputRaster - Uncertainty Map
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_fill_stats <- function(input = qgisprocess::qgis_default_value(), .k = qgisprocess::qgis_default_value(), mode = qgisprocess::qgis_default_value(), .m = qgisprocess::qgis_default_value(), distance = qgisprocess::qgis_default_value(), minimum = qgisprocess::qgis_default_value(), maximum = qgisprocess::qgis_default_value(), power = qgisprocess::qgis_default_value(), cells = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), uncertainty = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.fill.stats")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.fill.stats", `input` = input, `-k` = .k, `mode` = mode, `-m` = .m, `distance` = distance, `minimum` = minimum, `maximum` = maximum, `power` = power, `cells` = cells, `output` = output, `uncertainty` = uncertainty, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}