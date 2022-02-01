##' QGIS Algorithm provided by GRASS r.path.coordinate.txt (grass7:r.path.coordinate.txt)
##'
##' @title QGIS algorithm r.path.coordinate.txt
##'
##' @param input `raster` - Name of input direction. Path to a raster layer.
##' @param format `enum`  of `("auto", "degree", "45degree", "bitmask")` - Format of the input direction map. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param values `raster` - Name of input raster values to be used for output. Path to a raster layer.
##' @param raster_path `rasterDestination` - Name for output raster path map. Path for new raster layer.
##' @param vector_path `vectorDestination` - Name for output vector path map. Path for new vector layer.
##' @param start_coordinates `point` - Map coordinate of starting point (E,N). Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param .c `boolean` - Copy input cell values on output. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .a `boolean` - Accumulate input values along the path. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.
##' @param .n `boolean` - Count cell numbers along the path. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * raster_path - outputRaster - Name for output raster path map
##' * vector_path - outputVector - Name for output vector path map
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_path_coordinate_txt <- function(input = qgisprocess::qgis_default_value(), format = qgisprocess::qgis_default_value(), values = qgisprocess::qgis_default_value(), raster_path = qgisprocess::qgis_default_value(), vector_path = qgisprocess::qgis_default_value(), start_coordinates = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.path.coordinate.txt")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.path.coordinate.txt", `input` = input, `format` = format, `values` = values, `raster_path` = raster_path, `vector_path` = vector_path, `start_coordinates` = start_coordinates, `-c` = .c, `-a` = .a, `-n` = .n, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "raster_path")
  }
}