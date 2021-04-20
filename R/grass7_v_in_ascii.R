##' QGIS Algorithm provided by GRASS v.in.ascii (grass7:v.in.ascii)
##'
##' @title QGIS algorithm v.in.ascii
##'
##' @param input `file` - ASCII file to be imported. Path to a file.
##' @param format `enum`  of `("point", "standard")` - Input file format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param separator `string` - Field separator. String value.
##' @param text `string` - Text delimiter. String value.
##' @param skip `number` - Number of header lines to skip at top of input file. A numeric value.
##' @param columns `string` - Column definition in SQL style (example: 'x double precision, y double precision, cat int, name varchar(10)'). String value.
##' @param x `number` - Number of column used as x coordinate. A numeric value.
##' @param y `number` - Number of column used as y coordinate. A numeric value.
##' @param z `number` - Number of column used as z coordinate. A numeric value.
##' @param cat `number` - Number of column used as category. A numeric value.
##' @param .z `boolean` - Create 3D vector map. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -z.
##' @param .n `boolean` - Do not expect a header when reading in standard format. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param .t `boolean` - Do not create table in points mode. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param .b `boolean` - Do not build topology in points mode. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -b.
##' @param .r `boolean` - Only import points falling within current region (points mode). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param .i `boolean` - Ignore broken line(s) in points mode. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -i.
##' @param output `vectorDestination` - ASCII. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputVector - ASCII
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_in_ascii <- function(input = qgisprocess::qgis_default_value(), format = qgisprocess::qgis_default_value(), separator = qgisprocess::qgis_default_value(), text = qgisprocess::qgis_default_value(), skip = qgisprocess::qgis_default_value(), columns = qgisprocess::qgis_default_value(), x = qgisprocess::qgis_default_value(), y = qgisprocess::qgis_default_value(), z = qgisprocess::qgis_default_value(), cat = qgisprocess::qgis_default_value(), .z = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), .b = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), .i = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:v.in.ascii",`input` = input, `format` = format, `separator` = separator, `text` = text, `skip` = skip, `columns` = columns, `x` = x, `y` = y, `z` = z, `cat` = cat, `-z` = .z, `-n` = .n, `-t` = .t, `-b` = .b, `-r` = .r, `-i` = .i, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}