##' QGIS Algorithm provided by GRASS r.fill.stats (grass:r.fill.stats). Rapidly fills 'no data' cells (NULLs) of a raster map with interpolated values (IDW).
##'
##' @title QGIS algorithm - r.fill.stats
##'
##' @param input `raster` - Input raster layer with data gaps to fill. Path to a raster layer.
##' @param .k `boolean` - Preserve original cell values (By default original values are smoothed). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -k.
##' @param mode `enum`  of `("wmean", "mean", "median", "mode")` - Statistic for interpolated cell values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .m `boolean` - Interpret distance as map units, not number of cells (Do not select with geodetic coordinates). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -m.
##' @param distance `number` - Distance threshold (default: in cells) for interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param minimum `number` - Minimum input data value to include in interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param maximum `number` - Maximum input data value to include in interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param power `number` - Power coefficient for IDW interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param cells `number` - Minimum number of data cells within search radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param output `rasterDestination` - Output Map. Path for new raster layer.
##' @param uncertainty `rasterDestination` - Uncertainty Map. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Output Map
##' * uncertainty - outputRaster - Uncertainty Map
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_fill_stats <- function(input = qgisprocess:::qgis_default_value(), .k = qgisprocess:::qgis_default_value(), mode = qgisprocess:::qgis_default_value(), .m = qgisprocess:::qgis_default_value(), distance = qgisprocess:::qgis_default_value(), minimum = qgisprocess:::qgis_default_value(), maximum = qgisprocess:::qgis_default_value(), power = qgisprocess:::qgis_default_value(), cells = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), uncertainty = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.fill.stats")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.fill.stats", `input` = input, `-k` = .k, `mode` = mode, `-m` = .m, `distance` = distance, `minimum` = minimum, `maximum` = maximum, `power` = power, `cells` = cells, `output` = output, `uncertainty` = uncertainty, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.fill.stats", `input` = input, `-k` = .k, `mode` = mode, `-m` = .m, `distance` = distance, `minimum` = minimum, `maximum` = maximum, `power` = power, `cells` = cells, `output` = output, `uncertainty` = uncertainty, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}