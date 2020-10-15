##' QGIS Algorithm provided by GRASS r.grow.distance (grass7:r.grow.distance)
##'
##' @title QGIS algorithm r.grow.distance
##'
##' @param input `raster` - Input input raster layer. Path to a raster layer.
##' @param metric `enum`  of `("euclidean", "squared", "maximum", "manhattan", "geodesic")` - Metric. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .m `boolean` - Output distances in meters instead of map units. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param . `boolean` - Calculate distance to nearest NULL cell. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param distance `rasterDestination` - Distance. Path for new raster layer.
##' @param value `rasterDestination` - Value of nearest cell. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * distance - outputRaster - Distance
##' * value - outputRaster - Value of nearest cell
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_grow_distance <- function(input = qgisprocess::qgis_default_value(), metric = qgisprocess::qgis_default_value(), .m = qgisprocess::qgis_default_value(), . = qgisprocess::qgis_default_value(), distance = qgisprocess::qgis_default_value(), value = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.grow.distance",`input` = input, `metric` = metric, `-m` = .m, `-` = ., `distance` = distance, `value` = value, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "distance")
}
}