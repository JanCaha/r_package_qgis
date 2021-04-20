##' QGIS Algorithm provided by GRASS r.sunhours (grass7:r.sunhours)
##'
##' @title QGIS algorithm r.sunhours
##'
##' @param year `number` - Year. A numeric value.
##' @param month `number` - Month. A numeric value.
##' @param day `number` - Day. A numeric value.
##' @param hour `number` - Hour. A numeric value.
##' @param minute `number` - Minutes. A numeric value.
##' @param second `number` - Seconds. A numeric value.
##' @param .t `boolean` - Time is local sidereal time, not Greenwich standard time. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param .s `boolean` - Do not use SOLPOS algorithm of NREL. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
##' @param elevation `rasterDestination` - Solar Elevation Angle. Path for new raster layer.
##' @param azimuth `rasterDestination` - Solar Azimuth Angle. Path for new raster layer.
##' @param sunhour `rasterDestination` - Sunshine Hours. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * elevation - outputRaster - Solar Elevation Angle
##' * azimuth - outputRaster - Solar Azimuth Angle
##' * sunhour - outputRaster - Sunshine Hours
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_sunhours <- function(year = qgisprocess::qgis_default_value(), month = qgisprocess::qgis_default_value(), day = qgisprocess::qgis_default_value(), hour = qgisprocess::qgis_default_value(), minute = qgisprocess::qgis_default_value(), second = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), elevation = qgisprocess::qgis_default_value(), azimuth = qgisprocess::qgis_default_value(), sunhour = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.sunhours",`year` = year, `month` = month, `day` = day, `hour` = hour, `minute` = minute, `second` = second, `-t` = .t, `-s` = .s, `elevation` = elevation, `azimuth` = azimuth, `sunhour` = sunhour, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "elevation")
  }
}