##' QGIS Algorithm provided by GRASS r.slope.aspect (grass7:r.slope.aspect)
##'
##' @title QGIS algorithm r.slope.aspect
##'
##' @param elevation `raster` - Elevation. Path to a raster layer.
##' @param format `enum`  of `("degrees", "percent")` - Format for reporting the slope. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param precision `enum`  of `("FCELL", "CELL", "DCELL")` - Type of output aspect and slope layer. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .a `boolean` - Do not align the current region to the elevation layer. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.
##' @param .e `boolean` - Compute output at edges and near NULL values. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.
##' @param .n `boolean` - Create aspect as degrees clockwise from North (azimuth), with flat = -9999. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param zscale `number` - Multiplicative factor to convert elevation units to meters. A numeric value.
##' @param min_slope `number` - Minimum slope val. (in percent) for which aspect is computed. A numeric value.
##' @param slope `rasterDestination` - Slope. Path for new raster layer.
##' @param aspect `rasterDestination` - Aspect. Path for new raster layer.
##' @param pcurvature `rasterDestination` - Profile curvature. Path for new raster layer.
##' @param tcurvature `rasterDestination` - Tangential curvature. Path for new raster layer.
##' @param dx `rasterDestination` - First order partial derivative dx (E-W slope). Path for new raster layer.
##' @param dy `rasterDestination` - First order partial derivative dy (N-S slope). Path for new raster layer.
##' @param dxx `rasterDestination` - Second order partial derivative dxx. Path for new raster layer.
##' @param dyy `rasterDestination` - Second order partial derivative dyy. Path for new raster layer.
##' @param dxy `rasterDestination` - Second order partial derivative dxy. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * slope - outputRaster - Slope
##' * aspect - outputRaster - Aspect
##' * pcurvature - outputRaster - Profile curvature
##' * tcurvature - outputRaster - Tangential curvature
##' * dx - outputRaster - First order partial derivative dx 
##' * dy - outputRaster - First order partial derivative dy 
##' * dxx - outputRaster - Second order partial derivative dxx
##' * dyy - outputRaster - Second order partial derivative dyy
##' * dxy - outputRaster - Second order partial derivative dxy
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_slope_aspect <- function(elevation = qgisprocess::qgis_default_value(), format = qgisprocess::qgis_default_value(), precision = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), .e = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), zscale = qgisprocess::qgis_default_value(), min_slope = qgisprocess::qgis_default_value(), slope = qgisprocess::qgis_default_value(), aspect = qgisprocess::qgis_default_value(), pcurvature = qgisprocess::qgis_default_value(), tcurvature = qgisprocess::qgis_default_value(), dx = qgisprocess::qgis_default_value(), dy = qgisprocess::qgis_default_value(), dxx = qgisprocess::qgis_default_value(), dyy = qgisprocess::qgis_default_value(), dxy = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.slope.aspect")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.slope.aspect",`elevation` = elevation, `format` = format, `precision` = precision, `-a` = .a, `-e` = .e, `-n` = .n, `zscale` = zscale, `min_slope` = min_slope, `slope` = slope, `aspect` = aspect, `pcurvature` = pcurvature, `tcurvature` = tcurvature, `dx` = dx, `dy` = dy, `dxx` = dxx, `dyy` = dyy, `dxy` = dxy, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "slope")
  }
}