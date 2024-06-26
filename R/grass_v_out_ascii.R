##' QGIS Algorithm provided by GRASS v.out.ascii (grass:v.out.ascii). Exports a vector map to a GRASS ASCII vector representation.
##'
##' @title QGIS algorithm - v.out.ascii
##'
##' @param input `source` - Name of input vector map. Path to a vector layer.
##' @param type `enum`  of `("point", "line", "boundary", "centroid", "area", "face", "kernel")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param columns `field` - Name of attribute column(s) to be exported. The name of an existing field. ; delimited list of existing field names.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param format `enum`  of `("point", "standard", "wkt")` - Output format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param separator `enum`  of `("pipe", "comma", "space", "tab", "newline")` - Field separator. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param precision `number` - Number of significant digits (floating point only). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .o `boolean` - Create old (version 4) ASCII file. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -o.
##' @param .c `boolean` - Include column names in output (points mode). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -c.
##' @param output `fileDestination` - Name for output ASCII file or ASCII vector name if '-o' is defined. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Name for output ASCII file or ASCII vector name if '-o' is defined
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_v_out_ascii <- function(input = qgisprocess:::qgis_default_value(), type = qgisprocess:::qgis_default_value(), columns = qgisprocess:::qgis_default_value(), where = qgisprocess:::qgis_default_value(), format = qgisprocess:::qgis_default_value(), separator = qgisprocess:::qgis_default_value(), precision = qgisprocess:::qgis_default_value(), .o = qgisprocess:::qgis_default_value(), .c = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:v.out.ascii")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:v.out.ascii", `input` = input, `type` = type, `columns` = columns, `where` = where, `format` = format, `separator` = separator, `precision` = precision, `-o` = .o, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:v.out.ascii", `input` = input, `type` = type, `columns` = columns, `where` = where, `format` = format, `separator` = separator, `precision` = precision, `-o` = .o, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}