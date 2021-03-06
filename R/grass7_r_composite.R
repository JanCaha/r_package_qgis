##' QGIS Algorithm provided by GRASS r.composite (grass7:r.composite)
##'
##' @title QGIS algorithm r.composite
##'
##' @param red `raster` - Red. Path to a raster layer.
##' @param green `raster` - Green. Path to a raster layer.
##' @param blue `raster` - Blue. Path to a raster layer.
##' @param levels `number` - Number of levels to be used for each component. A numeric value.
##' @param level_red `number` - Number of levels to be used for red. A numeric value.
##' @param level_green `number` - Number of levels to be used for green. A numeric value.
##' @param level_blue `number` - Number of levels to be used for blue. A numeric value.
##' @param .d `boolean` - Dither. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -d.
##' @param .c `boolean` - Use closest color. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param output `rasterDestination` - Composite. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Composite
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_composite <- function(red = qgisprocess::qgis_default_value(), green = qgisprocess::qgis_default_value(), blue = qgisprocess::qgis_default_value(), levels = qgisprocess::qgis_default_value(), level_red = qgisprocess::qgis_default_value(), level_green = qgisprocess::qgis_default_value(), level_blue = qgisprocess::qgis_default_value(), .d = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.composite")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.composite", `red` = red, `green` = green, `blue` = blue, `levels` = levels, `level_red` = level_red, `level_green` = level_green, `level_blue` = level_blue, `-d` = .d, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}