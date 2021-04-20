##' QGIS Algorithm provided by GRASS v.in.mapgen (grass7:v.in.mapgen)
##'
##' @title QGIS algorithm v.in.mapgen
##'
##' @param input `file` - Name of input file in Mapgen/Matlab format. Path to a file.
##' @param .z `boolean` - Create 3D vector map. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -z.
##' @param .f `boolean` - Input map is in Matlab format. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -f.
##' @param output `vectorDestination` - Mapgen. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputVector - Mapgen
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_in_mapgen <- function(input = qgisprocess::qgis_default_value(), .z = qgisprocess::qgis_default_value(), .f = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:v.in.mapgen",`input` = input, `-z` = .z, `-f` = .f, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}