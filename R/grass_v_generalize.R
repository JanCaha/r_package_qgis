##' QGIS Algorithm provided by GRASS v.generalize (grass:v.generalize). Vector based generalization.
##'
##' @title QGIS algorithm - v.generalize
##'
##' @param input `source` - Input layer. Path to a vector layer.
##' @param type `enum`  of `("line", "boundary", "area")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param cats `string` - Category values. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param method `enum`  of `("douglas", "douglas_reduction", "lang", "reduction", "reumann", "boyle", "sliding_averaging", "distance_weighting", "chaiken", "hermite", "snakes", "network", "displacement")` - Generalization algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param threshold `number` - Maximal tolerance value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param look_ahead `number` - Look-ahead parameter. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param reduction `number` - Percentage of the points in the output of 'douglas_reduction' algorithm. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param slide `number` - Slide of computed point toward the original point. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param angle_thresh `number` - Minimum angle between two consecutive segments in Hermite method. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param degree_thresh `number` - Degree threshold in network generalization. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param closeness_thresh `number` - Closeness threshold in network generalization. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param betweeness_thresh `number` - Betweenness threshold in network generalization. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param alpha `number` - Snakes alpha parameter. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param beta `number` - Snakes beta parameter. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param iterations `number` - Number of iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .t `boolean` - Do not copy attributes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -t.
##' @param .l `boolean` - Disable loop support. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -l.
##' @param output `vectorDestination` - Generalized. Path for new vector layer.
##' @param error `vectorDestination` - Errors. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * error - outputVector - Errors
##' * output - outputVector - Generalized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_v_generalize <- function(input = qgisprocess:::qgis_default_value(), type = qgisprocess:::qgis_default_value(), cats = qgisprocess:::qgis_default_value(), where = qgisprocess:::qgis_default_value(), method = qgisprocess:::qgis_default_value(), threshold = qgisprocess:::qgis_default_value(), look_ahead = qgisprocess:::qgis_default_value(), reduction = qgisprocess:::qgis_default_value(), slide = qgisprocess:::qgis_default_value(), angle_thresh = qgisprocess:::qgis_default_value(), degree_thresh = qgisprocess:::qgis_default_value(), closeness_thresh = qgisprocess:::qgis_default_value(), betweeness_thresh = qgisprocess:::qgis_default_value(), alpha = qgisprocess:::qgis_default_value(), beta = qgisprocess:::qgis_default_value(), iterations = qgisprocess:::qgis_default_value(), .t = qgisprocess:::qgis_default_value(), .l = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), error = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess:::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess:::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:v.generalize")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:v.generalize", `input` = input, `type` = type, `cats` = cats, `where` = where, `method` = method, `threshold` = threshold, `look_ahead` = look_ahead, `reduction` = reduction, `slide` = slide, `angle_thresh` = angle_thresh, `degree_thresh` = degree_thresh, `closeness_thresh` = closeness_thresh, `betweeness_thresh` = betweeness_thresh, `alpha` = alpha, `beta` = beta, `iterations` = iterations, `-t` = .t, `-l` = .l, `output` = output, `error` = error, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:v.generalize", `input` = input, `type` = type, `cats` = cats, `where` = where, `method` = method, `threshold` = threshold, `look_ahead` = look_ahead, `reduction` = reduction, `slide` = slide, `angle_thresh` = angle_thresh, `degree_thresh` = degree_thresh, `closeness_thresh` = closeness_thresh, `betweeness_thresh` = betweeness_thresh, `alpha` = alpha, `beta` = beta, `iterations` = iterations, `-t` = .t, `-l` = .l, `output` = output, `error` = error, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "error")
  }
}