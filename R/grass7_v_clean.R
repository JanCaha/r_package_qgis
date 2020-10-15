##' QGIS Algorithm provided by GRASS v.clean (grass7:v.clean)
##'
##' @title QGIS algorithm v.clean
##'
##' @param input `source` - Layer to clean. Path to a vector layer.
##' @param type `enum`  of `("point", "line", "boundary", "centroid", "area", "face", "kernel")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param tool `enum`  of `("break", "snap", "rmdangle", "chdangle", "rmbridge", "chbridge", "rmdupl", "rmdac", "bpol", "prune", "rmarea", "rmline", "rmsa")` - Cleaning tool. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param threshold `string` - Threshold (comma separated for each tool). String value.
##' @param .b `boolean` - Do not build topology for the output vector. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .c `boolean` - Combine tools with recommended follow-up tools. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param output `vectorDestination` - Cleaned. Path for new vector layer.
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
##' * output - outputVector - Cleaned
##' * error - outputVector - Errors
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_clean <- function(input = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), tool = qgisprocess::qgis_default_value(), threshold = qgisprocess::qgis_default_value(), .b = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), error = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:v.clean",`input` = input, `type` = type, `tool` = tool, `threshold` = threshold, `-b` = .b, `-c` = .c, `output` = output, `error` = error, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
}
}