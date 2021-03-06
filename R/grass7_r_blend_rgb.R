##' QGIS Algorithm provided by GRASS r.blend.rgb (grass7:r.blend.rgb)
##'
##' @title QGIS algorithm r.blend.rgb
##'
##' @param first `raster` - Name of first raster map for blending. Path to a raster layer.
##' @param second `raster` - Name of second raster map for blending. Path to a raster layer.
##' @param percent `number` - Percentage weight of first map for color blending. A numeric value.
##' @param output_red `rasterDestination` - Blended Red. Path for new raster layer.
##' @param output_green `rasterDestination` - Blended Green. Path for new raster layer.
##' @param output_blue `rasterDestination` - Blended Blue. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output_red - outputRaster - Blended Red
##' * output_green - outputRaster - Blended Green
##' * output_blue - outputRaster - Blended Blue
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_blend_rgb <- function(first = qgisprocess::qgis_default_value(), second = qgisprocess::qgis_default_value(), percent = qgisprocess::qgis_default_value(), output_red = qgisprocess::qgis_default_value(), output_green = qgisprocess::qgis_default_value(), output_blue = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.blend.rgb")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.blend.rgb", `first` = first, `second` = second, `percent` = percent, `output_red` = output_red, `output_green` = output_green, `output_blue` = output_blue, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output_red")
  }
}