##' QGIS Algorithm provided by GRASS r.mapcalc.simple (grass7:r.mapcalc.simple)
##'
##' @title QGIS algorithm r.mapcalc.simple
##'
##' @param a `raster` - Raster layer A. Path to a raster layer.
##' @param b `raster` - Raster layer B. Path to a raster layer.
##' @param c `raster` - Raster layer C. Path to a raster layer.
##' @param d `raster` - Raster layer D. Path to a raster layer.
##' @param e `raster` - Raster layer E. Path to a raster layer.
##' @param f `raster` - Raster layer F. Path to a raster layer.
##' @param expression `string` - Formula. String value.
##' @param output `rasterDestination` - Calculated. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Calculated
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_mapcalc_simple <- function(a = qgisprocess::qgis_default_value(), b = qgisprocess::qgis_default_value(), c = qgisprocess::qgis_default_value(), d = qgisprocess::qgis_default_value(), e = qgisprocess::qgis_default_value(), f = qgisprocess::qgis_default_value(), expression = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.mapcalc.simple",`a` = a, `b` = b, `c` = c, `d` = d, `e` = e, `f` = f, `expression` = expression, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}