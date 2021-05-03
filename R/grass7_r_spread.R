##' QGIS Algorithm provided by GRASS r.spread (grass7:r.spread)
##'
##' @title QGIS algorithm r.spread
##'
##' @param base_ros `raster` - Raster map containing base ROS (cm/min). Path to a raster layer.
##' @param max_ros `raster` - Raster map containing maximal ROS (cm/min). Path to a raster layer.
##' @param direction_ros `raster` - Raster map containing directions of maximal ROS (degree). Path to a raster layer.
##' @param start `raster` - Raster map containing starting sources. Path to a raster layer.
##' @param spotting_distance `raster` - Raster map containing maximal spotting distance (m, required with -s). Path to a raster layer.
##' @param wind_speed `raster` - Raster map containing midflame wind speed (ft/min, required with -s). Path to a raster layer.
##' @param fuel_moisture `raster` - Raster map containing fine fuel moisture of the cell receiving a spotting firebrand (%, required with -s). Path to a raster layer.
##' @param backdrop `raster` - Name of raster map as a display backdrop. Path to a raster layer.
##' @param least_size `enum`  of `("3", "5", "7", "9", "11", "13", "15")` - Basic sampling window size needed to meet certain accuracy (3). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param comp_dens `number` - Sampling density for additional computing (range: 0.0 - 1.0 (0.5)). A numeric value.
##' @param init_time `number` - Initial time for current simulation (0) (min). A numeric value.
##' @param lag `number` - Simulating time duration LAG (fill the region) (min). A numeric value.
##' @param .s `boolean` - Consider spotting effect (for wildfires). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
##' @param .i `boolean` - Use start raster map values in output spread time raster map. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -i.
##' @param output `rasterDestination` - Spread Time. Path for new raster layer.
##' @param x_output `rasterDestination` - X Back Coordinates. Path for new raster layer.
##' @param y_output `rasterDestination` - Y Back Coordinates. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Spread Time
##' * x_output - outputRaster - X Back Coordinates
##' * y_output - outputRaster - Y Back Coordinates
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_spread <- function(base_ros = qgisprocess::qgis_default_value(), max_ros = qgisprocess::qgis_default_value(), direction_ros = qgisprocess::qgis_default_value(), start = qgisprocess::qgis_default_value(), spotting_distance = qgisprocess::qgis_default_value(), wind_speed = qgisprocess::qgis_default_value(), fuel_moisture = qgisprocess::qgis_default_value(), backdrop = qgisprocess::qgis_default_value(), least_size = qgisprocess::qgis_default_value(), comp_dens = qgisprocess::qgis_default_value(), init_time = qgisprocess::qgis_default_value(), lag = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), .i = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), x_output = qgisprocess::qgis_default_value(), y_output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.spread")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.spread",`base_ros` = base_ros, `max_ros` = max_ros, `direction_ros` = direction_ros, `start` = start, `spotting_distance` = spotting_distance, `wind_speed` = wind_speed, `fuel_moisture` = fuel_moisture, `backdrop` = backdrop, `least_size` = least_size, `comp_dens` = comp_dens, `init_time` = init_time, `lag` = lag, `-s` = .s, `-i` = .i, `output` = output, `x_output` = x_output, `y_output` = y_output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}