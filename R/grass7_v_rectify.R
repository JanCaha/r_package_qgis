##' QGIS Algorithm provided by GRASS v.rectify (grass7:v.rectify)
##'
##' @title QGIS algorithm v.rectify
##'
##' @param input `source` - Name of input vector map. Path to a vector layer.
##' @param inline_points `string` - Inline control points. String value.
##' @param points `file` - Name of input file with control points. Path to a file.
##' @param order `number` - Rectification polynomial order. A numeric value.
##' @param separator `string` - Field separator for RMS report. String value.
##' @param .arg_3 `boolean` - Perform 3D transformation. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -3.
##' @param .o `boolean` - Perform orthogonal 3D transformation. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -o.
##' @param .b `boolean` - Do not build topology. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -b.
##' @param output `vectorDestination` - Rectified. Path for new vector layer.
##' @param rmsfile `fileDestination` - Root Mean Square errors file. Path for new file.
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
##' * output - outputVector - Rectified
##' * rmsfile - outputFile - Root Mean Square errors file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_rectify <- function(input = qgisprocess::qgis_default_value(), inline_points = qgisprocess::qgis_default_value(), points = qgisprocess::qgis_default_value(), order = qgisprocess::qgis_default_value(), separator = qgisprocess::qgis_default_value(), .arg_3 = qgisprocess::qgis_default_value(), .o = qgisprocess::qgis_default_value(), .b = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), rmsfile = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:v.rectify")

  output <- qgisprocess::qgis_run_algorithm("grass7:v.rectify", `input` = input, `inline_points` = inline_points, `points` = points, `order` = order, `separator` = separator, `-3` = .arg_3, `-o` = .o, `-b` = .b, `output` = output, `rmsfile` = rmsfile, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}