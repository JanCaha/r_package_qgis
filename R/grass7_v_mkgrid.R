##' QGIS Algorithm provided by GRASS v.mkgrid (grass7:v.mkgrid)
##'
##' @title QGIS algorithm v.mkgrid
##'
##' @param grid `string` - Number of rows and columns in grid. String value.
##' @param position `enum`  of `("coor")` - Where to place the grid. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param coordinates `point` - Lower left easting and northing coordinates of map. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param box `string` - Width and height of boxes in grid. String value.
##' @param angle `number` - Angle of rotation (in degrees counter-clockwise). A numeric value.
##' @param breaks `number` - Number of vertex points per grid cell. A numeric value.
##' @param .h `boolean` - Create hexagons (default: rectangles). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -h.
##' @param .p `boolean` - Create grid of points instead of areas and centroids. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -p.
##' @param map `vectorDestination` - Grid. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * map - outputVector - Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_mkgrid <- function(grid = qgisprocess::qgis_default_value(), position = qgisprocess::qgis_default_value(), coordinates = qgisprocess::qgis_default_value(), box = qgisprocess::qgis_default_value(), angle = qgisprocess::qgis_default_value(), breaks = qgisprocess::qgis_default_value(), .h = qgisprocess::qgis_default_value(), .p = qgisprocess::qgis_default_value(), map = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:v.mkgrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:v.mkgrid", `grid` = grid, `position` = position, `coordinates` = coordinates, `box` = box, `angle` = angle, `breaks` = breaks, `-h` = .h, `-p` = .p, `map` = map, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:v.mkgrid", `grid` = grid, `position` = position, `coordinates` = coordinates, `box` = box, `angle` = angle, `breaks` = breaks, `-h` = .h, `-p` = .p, `map` = map, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "map")
  }
}