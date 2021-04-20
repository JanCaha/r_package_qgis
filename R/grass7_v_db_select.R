##' QGIS Algorithm provided by GRASS v.db.select (grass7:v.db.select)
##'
##' @title QGIS algorithm v.db.select
##'
##' @param map `source` - Input vector map. Path to a vector layer.
##' @param layer `number` - Layer Number. A numeric value.
##' @param columns `string` - Name of attribute column(s), comma separated. String value.
##' @param .c `boolean` - Do not include column names in output. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param separator `string` - Output field separator. String value.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param group `string` - GROUP BY conditions of SQL statement without 'group by' keyword. String value.
##' @param vertical_separator `string` - Output vertical record separator. String value.
##' @param null_value `string` - Null value indicator. String value.
##' @param .v `boolean` - Vertical output (instead of horizontal). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -v.
##' @param .r `boolean` - Print minimal region extent of selected vector features instead of attributes. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param file `fileDestination` - Attributes. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * file - outputFile - Attributes
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_db_select <- function(map = qgisprocess::qgis_default_value(), layer = qgisprocess::qgis_default_value(), columns = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), separator = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), group = qgisprocess::qgis_default_value(), vertical_separator = qgisprocess::qgis_default_value(), null_value = qgisprocess::qgis_default_value(), .v = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), file = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:v.db.select",`map` = map, `layer` = layer, `columns` = columns, `-c` = .c, `separator` = separator, `where` = where, `group` = group, `vertical_separator` = vertical_separator, `null_value` = null_value, `-v` = .v, `-r` = .r, `file` = file, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "file")
  }
}