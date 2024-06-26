##' QGIS Algorithm provided by GRASS r.ros (grass:r.ros). Generates rate of spread raster maps.
##'
##' @title QGIS algorithm - r.ros
##'
##' @param model `raster` - Raster map containing fuel models. Path to a raster layer.
##' @param moisture_1h `raster` - Raster map containing the 1-hour fuel moisture (%). Path to a raster layer.
##' @param moisture_10h `raster` - Raster map containing the 10-hour fuel moisture (%). Path to a raster layer.
##' @param moisture_100h `raster` - Raster map containing the 100-hour fuel moisture (%). Path to a raster layer.
##' @param moisture_live `raster` - Raster map containing live fuel moisture (%). Path to a raster layer.
##' @param velocity `raster` - Raster map containing midflame wind velocities (ft\code{/}min). Path to a raster layer.
##' @param direction `raster` - Name of raster map containing wind directions (degree). Path to a raster layer.
##' @param slope `raster` - Name of raster map containing slope (degree). Path to a raster layer.
##' @param aspect `raster` - Raster map containing aspect (degree, CCW from E). Path to a raster layer.
##' @param elevation `raster` - Raster map containing elevation (m, required for spotting). Path to a raster layer.
##' @param base_ros `rasterDestination` - Base ROS. Path for new raster layer.
##' @param max_ros `rasterDestination` - Max ROS. Path for new raster layer.
##' @param direction_ros `rasterDestination` - Direction ROS. Path for new raster layer.
##' @param spotting_distance `rasterDestination` - Spotting Distance. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * base_ros - outputRaster - Base ROS
##' * direction_ros - outputRaster - Direction ROS
##' * max_ros - outputRaster - Max ROS
##' * spotting_distance - outputRaster - Spotting Distance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_ros <- function(model = qgisprocess:::qgis_default_value(), moisture_1h = qgisprocess:::qgis_default_value(), moisture_10h = qgisprocess:::qgis_default_value(), moisture_100h = qgisprocess:::qgis_default_value(), moisture_live = qgisprocess:::qgis_default_value(), velocity = qgisprocess:::qgis_default_value(), direction = qgisprocess:::qgis_default_value(), slope = qgisprocess:::qgis_default_value(), aspect = qgisprocess:::qgis_default_value(), elevation = qgisprocess:::qgis_default_value(), base_ros = qgisprocess:::qgis_default_value(), max_ros = qgisprocess:::qgis_default_value(), direction_ros = qgisprocess:::qgis_default_value(), spotting_distance = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.ros")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.ros", `model` = model, `moisture_1h` = moisture_1h, `moisture_10h` = moisture_10h, `moisture_100h` = moisture_100h, `moisture_live` = moisture_live, `velocity` = velocity, `direction` = direction, `slope` = slope, `aspect` = aspect, `elevation` = elevation, `base_ros` = base_ros, `max_ros` = max_ros, `direction_ros` = direction_ros, `spotting_distance` = spotting_distance, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.ros", `model` = model, `moisture_1h` = moisture_1h, `moisture_10h` = moisture_10h, `moisture_100h` = moisture_100h, `moisture_live` = moisture_live, `velocity` = velocity, `direction` = direction, `slope` = slope, `aspect` = aspect, `elevation` = elevation, `base_ros` = base_ros, `max_ros` = max_ros, `direction_ros` = direction_ros, `spotting_distance` = spotting_distance, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "base_ros")
  }
}