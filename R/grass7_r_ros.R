##' QGIS Algorithm provided by GRASS r.ros (grass7:r.ros)
##'
##' @title QGIS algorithm r.ros
##'
##' @param model `raster` - Raster map containing fuel models. Path to a raster layer.
##' @param moisture_1h `raster` - Raster map containing the 1-hour fuel moisture (%). Path to a raster layer.
##' @param moisture_10h `raster` - Raster map containing the 10-hour fuel moisture (%). Path to a raster layer.
##' @param moisture_100h `raster` - Raster map containing the 100-hour fuel moisture (%). Path to a raster layer.
##' @param moisture_live `raster` - Raster map containing live fuel moisture (%). Path to a raster layer.
##' @param velocity `raster` - Raster map containing midflame wind velocities (ft/min). Path to a raster layer.
##' @param direction `raster` - Name of raster map containing wind directions (degree). Path to a raster layer.
##' @param slope `raster` - Name of raster map containing slope (degree). Path to a raster layer.
##' @param aspect `raster` - Raster map containing aspect (degree, CCW from E). Path to a raster layer.
##' @param elevation `raster` - Raster map containing elevation (m, required for spotting). Path to a raster layer.
##' @param base_ros `rasterDestination` - Base ROS. Path for new raster layer.
##' @param max_ros `rasterDestination` - Max ROS. Path for new raster layer.
##' @param direction_ros `rasterDestination` - Direction ROS. Path for new raster layer.
##' @param spotting_distance `rasterDestination` - Spotting Distance. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * base_ros - outputRaster - Base ROS
##' * max_ros - outputRaster - Max ROS
##' * direction_ros - outputRaster - Direction ROS
##' * spotting_distance - outputRaster - Spotting Distance
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_ros <- function(model = qgisprocess::qgis_default_value(), moisture_1h = qgisprocess::qgis_default_value(), moisture_10h = qgisprocess::qgis_default_value(), moisture_100h = qgisprocess::qgis_default_value(), moisture_live = qgisprocess::qgis_default_value(), velocity = qgisprocess::qgis_default_value(), direction = qgisprocess::qgis_default_value(), slope = qgisprocess::qgis_default_value(), aspect = qgisprocess::qgis_default_value(), elevation = qgisprocess::qgis_default_value(), base_ros = qgisprocess::qgis_default_value(), max_ros = qgisprocess::qgis_default_value(), direction_ros = qgisprocess::qgis_default_value(), spotting_distance = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.ros",`model` = model, `moisture_1h` = moisture_1h, `moisture_10h` = moisture_10h, `moisture_100h` = moisture_100h, `moisture_live` = moisture_live, `velocity` = velocity, `direction` = direction, `slope` = slope, `aspect` = aspect, `elevation` = elevation, `base_ros` = base_ros, `max_ros` = max_ros, `direction_ros` = direction_ros, `spotting_distance` = spotting_distance, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "base_ros")
}
}