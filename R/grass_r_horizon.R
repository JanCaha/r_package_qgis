##' QGIS Algorithm provided by GRASS r.horizon (grass:r.horizon). Horizon angle computation from a digital elevation model.
##'
##' @title QGIS algorithm - r.horizon
##'
##' @param elevation `raster` - Name of input elevation raster map. Path to a raster layer.
##' @param direction `number` - Direction in which you want to know the horizon height. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param step `number` - Angle step size for multidirectional horizon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param start `number` - Start angle for multidirectional horizon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param end `number` - End angle for multidirectional horizon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param bufferzone `number` - For horizon rasters, read from the DEM an extra buffer around the present region. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param e_buff `number` - For horizon rasters, read from the DEM an extra buffer eastward the present region. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param w_buff `number` - For horizon rasters, read from the DEM an extra buffer westward the present region. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param n_buff `number` - For horizon rasters, read from the DEM an extra buffer northward the present region. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param s_buff `number` - For horizon rasters, read from the DEM an extra buffer southward the present region. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param maxdistance `number` - The maximum distance to consider when finding the horizon height. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param distance `number` - Sampling distance step coefficient. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .d `boolean` - Write output in degrees (default is radians). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -d.
##' @param .c `boolean` - Write output in compass orientation (default is CCW, East=0). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -c.
##' @param output `folderDestination` - Folder to get horizon rasters. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFolder - Folder to get horizon rasters
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_horizon <- function(elevation = qgisprocess:::qgis_default_value(), direction = qgisprocess:::qgis_default_value(), step = qgisprocess:::qgis_default_value(), start = qgisprocess:::qgis_default_value(), end = qgisprocess:::qgis_default_value(), bufferzone = qgisprocess:::qgis_default_value(), e_buff = qgisprocess:::qgis_default_value(), w_buff = qgisprocess:::qgis_default_value(), n_buff = qgisprocess:::qgis_default_value(), s_buff = qgisprocess:::qgis_default_value(), maxdistance = qgisprocess:::qgis_default_value(), distance = qgisprocess:::qgis_default_value(), .d = qgisprocess:::qgis_default_value(), .c = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.horizon")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.horizon", `elevation` = elevation, `direction` = direction, `step` = step, `start` = start, `end` = end, `bufferzone` = bufferzone, `e_buff` = e_buff, `w_buff` = w_buff, `n_buff` = n_buff, `s_buff` = s_buff, `maxdistance` = maxdistance, `distance` = distance, `-d` = .d, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.horizon", `elevation` = elevation, `direction` = direction, `step` = step, `start` = start, `end` = end, `bufferzone` = bufferzone, `e_buff` = e_buff, `w_buff` = w_buff, `n_buff` = n_buff, `s_buff` = s_buff, `maxdistance` = maxdistance, `distance` = distance, `-d` = .d, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}