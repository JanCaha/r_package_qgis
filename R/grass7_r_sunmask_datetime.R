##' QGIS Algorithm provided by GRASS r.sunmask.datetime (grass7:r.sunmask.datetime)
##'
##' @title QGIS algorithm r.sunmask.datetime
##'
##' @param elevation `raster` - Elevation raster layer (meters). Path to a raster layer.
##' @param year `number` - year. A numeric value.
##' @param month `number` - month. A numeric value.
##' @param day `number` - day. A numeric value.
##' @param hour `number` - hour. A numeric value.
##' @param minute `number` - minute. A numeric value.
##' @param second `number` - second. A numeric value.
##' @param timezone `number` - East positive, offset from GMT. A numeric value.
##' @param east `string` - Easting coordinate (point of interest). String value.
##' @param north `string` - Northing coordinate (point of interest). String value.
##' @param .z `boolean` - Do not ignore zero elevation. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .s `boolean` - Calculate sun position only and exit. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param output `rasterDestination` - Shadows. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Shadows
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_sunmask_datetime <- function(elevation = qgisprocess::qgis_default_value(), year = qgisprocess::qgis_default_value(), month = qgisprocess::qgis_default_value(), day = qgisprocess::qgis_default_value(), hour = qgisprocess::qgis_default_value(), minute = qgisprocess::qgis_default_value(), second = qgisprocess::qgis_default_value(), timezone = qgisprocess::qgis_default_value(), east = qgisprocess::qgis_default_value(), north = qgisprocess::qgis_default_value(), .z = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.sunmask.datetime",`elevation` = elevation, `year` = year, `month` = month, `day` = day, `hour` = hour, `minute` = minute, `second` = second, `timezone` = timezone, `east` = east, `north` = north, `-z` = .z, `-s` = .s, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
}
}