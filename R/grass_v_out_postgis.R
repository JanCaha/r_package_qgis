##' QGIS Algorithm provided by GRASS v.out.postgis (grass:v.out.postgis). Exports a vector map layer to PostGIS feature table.
##'
##' @title QGIS algorithm - v.out.postgis
##'
##' @param input `source` - Name of input vector map. Path to a vector layer.
##' @param type `enum`  of `("point", "line", "boundary", "centroid", "area", "face", "kernel", "auto")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param output `string` - Name for output PostGIS datasource. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param output_layer `string` - Name for output PostGIS layer. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param options `string` - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .t `boolean` - Do not export attribute table. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -t.
##' @param .l `boolean` - Export PostGIS topology instead of simple features. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -l.
##' @param .arg_2 `boolean` - Force 2D output even if input is 3D. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -2.
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
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_v_out_postgis <- function(input = qgisprocess:::qgis_default_value(), type = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), output_layer = qgisprocess:::qgis_default_value(), options = qgisprocess:::qgis_default_value(), .t = qgisprocess:::qgis_default_value(), .l = qgisprocess:::qgis_default_value(), .arg_2 = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:v.out.postgis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:v.out.postgis", `input` = input, `type` = type, `output` = output, `output_layer` = output_layer, `options` = options, `-t` = .t, `-l` = .l, `-2` = .arg_2, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:v.out.postgis", `input` = input, `type` = type, `output` = output, `output_layer` = output_layer, `options` = options, `-t` = .t, `-l` = .l, `-2` = .arg_2, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}