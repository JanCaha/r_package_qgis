##' QGIS Algorithm provided by GRASS v.in.lidar (grass7:v.in.lidar)
##'
##' @title QGIS algorithm v.in.lidar
##'
##' @param input `file` - LiDAR input files in LAS format (*.las or *.laz). Path to a file.
##' @param spatial `extent` - Import subregion only. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param zrange `range` - Filter range for z data. Two comma separated numeric values, e.g. '1,10'.
##' @param return_filter `enum`  of `("first", "last", "mid")` - Only import points of selected return type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param class_filter `string` - Only import points of selected class(es) (comma separated integers). String value.
##' @param skip `number` - Do not import every n-th point. A numeric value.
##' @param preserve `number` - Import only every n-th point. A numeric value.
##' @param offset `number` - Skip first n points. A numeric value.
##' @param limit `number` - Import only n points. A numeric value.
##' @param .t `boolean` - Do not create attribute table. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param .c `boolean` - Do not automatically add unique ID as category to each point. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .b `boolean` - Do not build topology. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -b.
##' @param output `vectorDestination` - Lidar. Path for new vector layer.
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
##' * output - outputVector - Lidar
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_in_lidar <- function(input = qgisprocess::qgis_default_value(), spatial = qgisprocess::qgis_default_value(), zrange = qgisprocess::qgis_default_value(), return_filter = qgisprocess::qgis_default_value(), class_filter = qgisprocess::qgis_default_value(), skip = qgisprocess::qgis_default_value(), preserve = qgisprocess::qgis_default_value(), offset = qgisprocess::qgis_default_value(), limit = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .b = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:v.in.lidar")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:v.in.lidar", `input` = input, `spatial` = spatial, `zrange` = zrange, `return_filter` = return_filter, `class_filter` = class_filter, `skip` = skip, `preserve` = preserve, `offset` = offset, `limit` = limit, `-t` = .t, `-c` = .c, `-b` = .b, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:v.in.lidar", `input` = input, `spatial` = spatial, `zrange` = zrange, `return_filter` = return_filter, `class_filter` = class_filter, `skip` = skip, `preserve` = preserve, `offset` = offset, `limit` = limit, `-t` = .t, `-c` = .c, `-b` = .b, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}