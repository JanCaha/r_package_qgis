##' QGIS Algorithm provided by GRASS v.select (grass7:v.select)
##'
##' @title QGIS algorithm v.select
##'
##' @param ainput `source` - Input layer (A). Path to a vector layer.
##' @param atype `enum`  of `("point", "line", "boundary", "centroid", "area")` - Input layer (A) Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param binput `source` - Input layer (B). Path to a vector layer.
##' @param btype `enum`  of `("point", "line", "boundary", "centroid", "area")` - Input layer (B) Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param operator `enum`  of `("overlap", "equals", "disjoint", "intersect", "touches", "crosses", "within", "contains", "overlaps", "relate")` - Operator to use. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param relate `string` - Intersection Matrix Pattern used for 'relate' operator. String value.
##' @param .t `boolean` - Do not create attribute table. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param .c `boolean` - Do not skip features without category. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .r `boolean` - Reverse selection. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param output `vectorDestination` - Selected. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputVector - Selected
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_select <- function(ainput = qgisprocess::qgis_default_value(), atype = qgisprocess::qgis_default_value(), binput = qgisprocess::qgis_default_value(), btype = qgisprocess::qgis_default_value(), operator = qgisprocess::qgis_default_value(), relate = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:v.select")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:v.select", `ainput` = ainput, `atype` = atype, `binput` = binput, `btype` = btype, `operator` = operator, `relate` = relate, `-t` = .t, `-c` = .c, `-r` = .r, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:v.select", `ainput` = ainput, `atype` = atype, `binput` = binput, `btype` = btype, `operator` = operator, `relate` = relate, `-t` = .t, `-c` = .c, `-r` = .r, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}