##' QGIS Algorithm provided by GRASS r.plane (grass7:r.plane)
##'
##' @title QGIS algorithm r.plane
##'
##' @param dip `number` - Dip of plane. A numeric value.
##' @param azimuth `number` - Azimuth of the plane. A numeric value.
##' @param easting `number` - Easting coordinate of a point on the plane. A numeric value.
##' @param northing `number` - Northing coordinate of a point on the plane. A numeric value.
##' @param elevation `number` - Elevation coordinate of a point on the plane. A numeric value.
##' @param type `enum`  of `("CELL", "FCELL", "DCELL")` - Data type of resulting layer. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param output `rasterDestination` - Plane. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Plane
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_plane <- function(dip = qgisprocess::qgis_default_value(), azimuth = qgisprocess::qgis_default_value(), easting = qgisprocess::qgis_default_value(), northing = qgisprocess::qgis_default_value(), elevation = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.plane")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.plane", `dip` = dip, `azimuth` = azimuth, `easting` = easting, `northing` = northing, `elevation` = elevation, `type` = type, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}