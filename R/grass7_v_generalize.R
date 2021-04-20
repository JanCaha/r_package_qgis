##' QGIS Algorithm provided by GRASS v.generalize (grass7:v.generalize)
##'
##' @title QGIS algorithm v.generalize
##'
##' @param input `source` - Input layer. Path to a vector layer.
##' @param type `enum`  of `("line", "boundary", "area")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param cats `string` - Category values. String value.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param method `enum`  of `("douglas", "douglas_reduction", "lang", "reduction", "reumann", "boyle", "sliding_averaging", "distance_weighting", "chaiken", "hermite", "snakes", "network", "displacement")` - Generalization algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param threshold `number` - Maximal tolerance value. A numeric value.
##' @param look_ahead `number` - Look-ahead parameter. A numeric value.
##' @param reduction `number` - Percentage of the points in the output of 'douglas_reduction' algorithm. A numeric value.
##' @param slide `number` - Slide of computed point toward the original point. A numeric value.
##' @param angle_thresh `number` - Minimum angle between two consecutive segments in Hermite method. A numeric value.
##' @param degree_thresh `number` - Degree threshold in network generalization. A numeric value.
##' @param closeness_thresh `number` - Closeness threshold in network generalization. A numeric value.
##' @param betweeness_thresh `number` - Betweenness threshold in network generalization. A numeric value.
##' @param alpha `number` - Snakes alpha parameter. A numeric value.
##' @param beta `number` - Snakes beta parameter. A numeric value.
##' @param iterations `number` - Number of iterations. A numeric value.
##' @param .t `boolean` - Do not copy attributes. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param .l `boolean` - Disable loop support. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -l.
##' @param output `vectorDestination` - Generalized. Path for new vector layer.
##' @param error `vectorDestination` - Errors. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputVector - Generalized
##' * error - outputVector - Errors
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_generalize <- function(input = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), cats = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), threshold = qgisprocess::qgis_default_value(), look_ahead = qgisprocess::qgis_default_value(), reduction = qgisprocess::qgis_default_value(), slide = qgisprocess::qgis_default_value(), angle_thresh = qgisprocess::qgis_default_value(), degree_thresh = qgisprocess::qgis_default_value(), closeness_thresh = qgisprocess::qgis_default_value(), betweeness_thresh = qgisprocess::qgis_default_value(), alpha = qgisprocess::qgis_default_value(), beta = qgisprocess::qgis_default_value(), iterations = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), .l = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), error = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:v.generalize",`input` = input, `type` = type, `cats` = cats, `where` = where, `method` = method, `threshold` = threshold, `look_ahead` = look_ahead, `reduction` = reduction, `slide` = slide, `angle_thresh` = angle_thresh, `degree_thresh` = degree_thresh, `closeness_thresh` = closeness_thresh, `betweeness_thresh` = betweeness_thresh, `alpha` = alpha, `beta` = beta, `iterations` = iterations, `-t` = .t, `-l` = .l, `output` = output, `error` = error, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}