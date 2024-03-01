##' QGIS Algorithm provided by GRASS r.cost (grass:r.cost). Creates a raster layer of cumulative cost of moving across a raster layer whose cell values represent cost.
##'
##' @title QGIS algorithm - r.cost
##'
##' @param input `raster` - Unit cost layer. Path to a raster layer.
##' @param start_coordinates `point` - Coordinates of starting point(s) (E,N). Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param stop_coordinates `point` - Coordinates of stopping point(s) (E,N). Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param .k `boolean` - Use the 'Knight's move'; slower, but more accurate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -k.
##' @param .n `boolean` - Keep null values in output raster layer. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -n.
##' @param start_points `source` - Start points. Path to a vector layer.
##' @param stop_points `source` - Stop points. Path to a vector layer.
##' @param start_raster `raster` - Name of starting raster points map. Path to a raster layer.
##' @param max_cost `number` - Maximum cumulative cost. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param null_cost `number` - Cost assigned to null cells. By default, null cells are excluded. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param memory `number` - Maximum memory to be used in MB. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param output `rasterDestination` - Cumulative cost. Path for new raster layer.
##' @param nearest `rasterDestination` - Cost allocation map. Path for new raster layer.
##' @param outdir `rasterDestination` - Movement directions. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * nearest - outputRaster - Cost allocation map
##' * outdir - outputRaster - Movement directions
##' * output - outputRaster - Cumulative cost
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_cost <- function(input = qgisprocess:::qgis_default_value(), start_coordinates = qgisprocess:::qgis_default_value(), stop_coordinates = qgisprocess:::qgis_default_value(), .k = qgisprocess:::qgis_default_value(), .n = qgisprocess:::qgis_default_value(), start_points = qgisprocess:::qgis_default_value(), stop_points = qgisprocess:::qgis_default_value(), start_raster = qgisprocess:::qgis_default_value(), max_cost = qgisprocess:::qgis_default_value(), null_cost = qgisprocess:::qgis_default_value(), memory = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), nearest = qgisprocess:::qgis_default_value(), outdir = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.cost")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.cost", `input` = input, `start_coordinates` = start_coordinates, `stop_coordinates` = stop_coordinates, `-k` = .k, `-n` = .n, `start_points` = start_points, `stop_points` = stop_points, `start_raster` = start_raster, `max_cost` = max_cost, `null_cost` = null_cost, `memory` = memory, `output` = output, `nearest` = nearest, `outdir` = outdir, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.cost", `input` = input, `start_coordinates` = start_coordinates, `stop_coordinates` = stop_coordinates, `-k` = .k, `-n` = .n, `start_points` = start_points, `stop_points` = stop_points, `start_raster` = start_raster, `max_cost` = max_cost, `null_cost` = null_cost, `memory` = memory, `output` = output, `nearest` = nearest, `outdir` = outdir, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "nearest")
  }
}