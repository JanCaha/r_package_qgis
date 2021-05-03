##' QGIS Algorithm provided by GRASS v.vect.stats (grass7:v.vect.stats)
##'
##' @title QGIS algorithm v.vect.stats
##'
##' @param points `source` - Name of existing vector map with points. Path to a vector layer.
##' @param areas `source` - Name of existing vector map with areas. Path to a vector layer.
##' @param type `enum`  of `("point", "centroid")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param method `enum`  of `("sum", "average", "median", "mode", "minimum", "min_cat", "maximum", "max_cat", "range", "stddev", "variance", "diversity")` - Method for aggregate statistics. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param points_column `field` - Column name of points map to use for statistics. The name of an existing field. ; delimited list of existing field names.
##' @param count_column `string` - Column name to upload points count (integer, created if doesn't exists). String value.
##' @param stats_column `string` - Column name to upload statistics (double, created if doesn't exists). String value.
##' @param output `vectorDestination` - Updated. Path for new vector layer.
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
##' * output - outputVector - Updated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_vect_stats <- function(points = qgisprocess::qgis_default_value(), areas = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), points_column = qgisprocess::qgis_default_value(), count_column = qgisprocess::qgis_default_value(), stats_column = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:v.vect.stats")

  output <- qgisprocess::qgis_run_algorithm("grass7:v.vect.stats", `points` = points, `areas` = areas, `type` = type, `method` = method, `points_column` = points_column, `count_column` = count_column, `stats_column` = stats_column, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}