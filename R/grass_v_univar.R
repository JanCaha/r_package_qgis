##' QGIS Algorithm provided by GRASS v.univar (grass:v.univar). Calculates univariate statistics for attribute. Variance and standard deviation is calculated only for points if specified.
##'
##' @title QGIS algorithm - v.univar
##'
##' @param map `source` - Name of input vector map. Path to a vector layer.
##' @param type `enum`  of `("point", "line", "boundary", "centroid", "area")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param column `field` - Column name. The name of an existing field. ; delimited list of existing field names.
##' @param percentile `number` - Percentile to calculate. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .g `boolean` - Print the stats in shell script style. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -g.
##' @param .e `boolean` - Calculate extended statistics. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -e.
##' @param .w `boolean` - Weigh by line length or area size. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -w.
##' @param .d `boolean` - Calculate geometric distances instead of attribute statistics. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -d.
##' @param html `fileDestination` - Statistics. Path for new file.
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
##' * html - outputHtml - Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_v_univar <- function(map = qgisprocess:::qgis_default_value(), type = qgisprocess:::qgis_default_value(), where = qgisprocess:::qgis_default_value(), column = qgisprocess:::qgis_default_value(), percentile = qgisprocess:::qgis_default_value(), .g = qgisprocess:::qgis_default_value(), .e = qgisprocess:::qgis_default_value(), .w = qgisprocess:::qgis_default_value(), .d = qgisprocess:::qgis_default_value(), html = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:v.univar")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:v.univar", `map` = map, `type` = type, `where` = where, `column` = column, `percentile` = percentile, `-g` = .g, `-e` = .e, `-w` = .w, `-d` = .d, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:v.univar", `map` = map, `type` = type, `where` = where, `column` = column, `percentile` = percentile, `-g` = .g, `-e` = .e, `-w` = .w, `-d` = .d, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "html")
  }
}