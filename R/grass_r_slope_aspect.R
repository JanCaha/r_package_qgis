##' QGIS Algorithm provided by GRASS r.slope.aspect (grass:r.slope.aspect). Generates raster layers of slope, aspect, curvatures and partial derivatives from a elevation raster layer.
##'
##' @title QGIS algorithm - r.slope.aspect
##'
##' @param elevation `raster` - Elevation. Path to a raster layer.
##' @param format `enum`  of `("degrees", "percent")` - Format for reporting the slope. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param precision `enum`  of `("FCELL", "CELL", "DCELL")` - Type of output aspect and slope layer. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .a `boolean` - Do not align the current region to the elevation layer. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -a.
##' @param .e `boolean` - Compute output at edges and near NULL values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -e.
##' @param .n `boolean` - Create aspect as degrees clockwise from North (azimuth), with flat = -9999. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -n.
##' @param zscale `number` - Multiplicative factor to convert elevation units to meters. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param min_slope `number` - Minimum slope val. (in percent) for which aspect is computed. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' * aspect - outputRaster - Aspect
##' * dx - outputRaster - First order partial derivative dx (E-W slope)
##' * dxx - outputRaster - Second order partial derivative dxx
##' * dxy - outputRaster - Second order partial derivative dxy
##' * dy - outputRaster - First order partial derivative dy (N-S slope)
##' * dyy - outputRaster - Second order partial derivative dyy
##' * pcurvature - outputRaster - Profile curvature
##' * slope - outputRaster - Slope
##' * tcurvature - outputRaster - Tangential curvature
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_slope_aspect <- function(elevation = qgisprocess:::qgis_default_value(), format = qgisprocess:::qgis_default_value(), precision = qgisprocess:::qgis_default_value(), .a = qgisprocess:::qgis_default_value(), .e = qgisprocess:::qgis_default_value(), .n = qgisprocess:::qgis_default_value(), zscale = qgisprocess:::qgis_default_value(), min_slope = qgisprocess:::qgis_default_value(), slope = qgisprocess:::qgis_default_value(), aspect = qgisprocess:::qgis_default_value(), pcurvature = qgisprocess:::qgis_default_value(), tcurvature = qgisprocess:::qgis_default_value(), dx = qgisprocess:::qgis_default_value(), dy = qgisprocess:::qgis_default_value(), dxx = qgisprocess:::qgis_default_value(), dyy = qgisprocess:::qgis_default_value(), dxy = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.slope.aspect")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.slope.aspect", `elevation` = elevation, `format` = format, `precision` = precision, `-a` = .a, `-e` = .e, `-n` = .n, `zscale` = zscale, `min_slope` = min_slope, `slope` = slope, `aspect` = aspect, `pcurvature` = pcurvature, `tcurvature` = tcurvature, `dx` = dx, `dy` = dy, `dxx` = dxx, `dyy` = dyy, `dxy` = dxy, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.slope.aspect", `elevation` = elevation, `format` = format, `precision` = precision, `-a` = .a, `-e` = .e, `-n` = .n, `zscale` = zscale, `min_slope` = min_slope, `slope` = slope, `aspect` = aspect, `pcurvature` = pcurvature, `tcurvature` = tcurvature, `dx` = dx, `dy` = dy, `dxx` = dxx, `dyy` = dyy, `dxy` = dxy, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "aspect")
  }
}