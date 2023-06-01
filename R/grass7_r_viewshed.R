##' QGIS Algorithm provided by GRASS r.viewshed (grass7:r.viewshed)
##'
##' @title QGIS algorithm r.viewshed
##'
##' @param input `raster` - Elevation. Path to a raster layer.
##' @param coordinates `point` - Coordinate identifying the viewing position. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param observer_elevation `number` - Viewing elevation above the ground. A numeric value.
##' @param target_elevation `number` - Offset for target elevation above the ground. A numeric value.
##' @param max_distance `number` - Maximum visibility radius. By default infinity (-1). A numeric value.
##' @param refraction_coeff `number` - Refraction coefficient. A numeric value.
##' @param memory `number` - Amount of memory to use in MB. A numeric value.
##' @param .c `boolean` - Consider earth curvature (current ellipsoid). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .r `boolean` - Consider the effect of atmospheric refraction. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param .b `boolean` - Output format is invisible = 0, visible = 1. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -b.
##' @param .e `boolean` - Output format is invisible = NULL, else current elev - viewpoint_elev. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.
##' @param output `rasterDestination` - Intervisibility. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Intervisibility
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_viewshed <- function(input = qgisprocess:::qgis_default_value(), coordinates = qgisprocess:::qgis_default_value(), observer_elevation = qgisprocess:::qgis_default_value(), target_elevation = qgisprocess:::qgis_default_value(), max_distance = qgisprocess:::qgis_default_value(), refraction_coeff = qgisprocess:::qgis_default_value(), memory = qgisprocess:::qgis_default_value(), .c = qgisprocess:::qgis_default_value(), .r = qgisprocess:::qgis_default_value(), .b = qgisprocess:::qgis_default_value(), .e = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.viewshed")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.viewshed", `input` = input, `coordinates` = coordinates, `observer_elevation` = observer_elevation, `target_elevation` = target_elevation, `max_distance` = max_distance, `refraction_coeff` = refraction_coeff, `memory` = memory, `-c` = .c, `-r` = .r, `-b` = .b, `-e` = .e, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.viewshed", `input` = input, `coordinates` = coordinates, `observer_elevation` = observer_elevation, `target_elevation` = target_elevation, `max_distance` = max_distance, `refraction_coeff` = refraction_coeff, `memory` = memory, `-c` = .c, `-r` = .r, `-b` = .b, `-e` = .e, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}