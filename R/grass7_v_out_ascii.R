##' QGIS Algorithm provided by GRASS v.out.ascii (grass7:v.out.ascii)
##'
##' @title QGIS algorithm v.out.ascii
##'
##' @param input `source` - Name of input vector map. Path to a vector layer.
##' @param type `enum`  of `("point", "line", "boundary", "centroid", "area", "face", "kernel")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param columns `field` - Name of attribute column(s) to be exported. The name of an existing field. ; delimited list of existing field names.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param format `enum`  of `("point", "standard", "wkt")` - Output format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param separator `enum`  of `("pipe", "comma", "space", "tab", "newline")` - Field separator. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param precision `number` - Number of significant digits (floating point only). A numeric value.
##' @param .o `boolean` - Create old (version 4) ASCII file. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -o.
##' @param .c `boolean` - Include column names in output (points mode). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param output `fileDestination` - Name for output ASCII file or ASCII vector name if '-o' is defined. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Name for output ASCII file or ASCII vector name if 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_out_ascii <- function(input = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), columns = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), format = qgisprocess::qgis_default_value(), separator = qgisprocess::qgis_default_value(), precision = qgisprocess::qgis_default_value(), .o = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:v.out.ascii")
  output <- qgisprocess::qgis_run_algorithm("grass7:v.out.ascii",`input` = input, `type` = type, `columns` = columns, `where` = where, `format` = format, `separator` = separator, `precision` = precision, `-o` = .o, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}