##' QGIS Algorithm provided by GRASS r.horizon (grass7:r.horizon)
##'
##' @title QGIS algorithm r.horizon
##'
##' @param elevation `raster` - Name of input elevation raster map. Path to a raster layer.
##' @param direction `number` - Direction in which you want to know the horizon height. A numeric value.
##' @param step `number` - Angle step size for multidirectional horizon. A numeric value.
##' @param start `number` - Start angle for multidirectional horizon. A numeric value.
##' @param end `number` - End angle for multidirectional horizon. A numeric value.
##' @param bufferzone `number` - For horizon rasters, read from the DEM an extra buffer around the present region. A numeric value.
##' @param e_buff `number` - For horizon rasters, read from the DEM an extra buffer eastward the present region. A numeric value.
##' @param w_buff `number` - For horizon rasters, read from the DEM an extra buffer westward the present region. A numeric value.
##' @param n_buff `number` - For horizon rasters, read from the DEM an extra buffer northward the present region. A numeric value.
##' @param s_buff `number` - For horizon rasters, read from the DEM an extra buffer southward the present region. A numeric value.
##' @param maxdistance `number` - The maximum distance to consider when finding the horizon height. A numeric value.
##' @param distance `number` - Sampling distance step coefficient. A numeric value.
##' @param .d `boolean` - Write output in degrees (default is radians). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -d.
##' @param .c `boolean` - Write output in compass orientation (default is CCW, East=0). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param output `folderDestination` - Folder to get horizon rasters. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFolder - Folder to get horizon rasters
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_horizon <- function(elevation = qgisprocess::qgis_default_value(), direction = qgisprocess::qgis_default_value(), step = qgisprocess::qgis_default_value(), start = qgisprocess::qgis_default_value(), end = qgisprocess::qgis_default_value(), bufferzone = qgisprocess::qgis_default_value(), e_buff = qgisprocess::qgis_default_value(), w_buff = qgisprocess::qgis_default_value(), n_buff = qgisprocess::qgis_default_value(), s_buff = qgisprocess::qgis_default_value(), maxdistance = qgisprocess::qgis_default_value(), distance = qgisprocess::qgis_default_value(), .d = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.horizon")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.horizon",`elevation` = elevation, `direction` = direction, `step` = step, `start` = start, `end` = end, `bufferzone` = bufferzone, `e_buff` = e_buff, `w_buff` = w_buff, `n_buff` = n_buff, `s_buff` = s_buff, `maxdistance` = maxdistance, `distance` = distance, `-d` = .d, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}