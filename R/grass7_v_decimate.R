##' QGIS Algorithm provided by GRASS v.decimate (grass7:v.decimate)
##'
##' @title QGIS algorithm v.decimate
##'
##' @param input `source` - Input vector. Path to a vector layer.
##' @param zrange `range` - Filter range for z data (min,max). Two comma separated numeric values, e.g. '1,10'.
##' @param cats `string` - Category values. String value.
##' @param skip `number` - Throw away every n-th point. A numeric value.
##' @param preserve `number` - Preserve only every n-th point. A numeric value.
##' @param offset `number` - Skip first n points. A numeric value.
##' @param limit `number` - Copy only n points. A numeric value.
##' @param zdiff `number` - Minimal difference of z values. A numeric value.
##' @param cell_limit `number` - Preserve only n points per grid cell. A numeric value.
##' @param .g `boolean` - Apply grid-based decimation. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -g.
##' @param .f `boolean` - Use only first point in grid cell during grid-based decimation. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -f.
##' @param .c `boolean` - Only one point per cat in grid cell. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .z `boolean` - Use z in grid decimation. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -z.
##' @param .x `boolean` - Store only the coordinates, throw away categories. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -x.
##' @param .b `boolean` - Do not build topology. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -b.
##' @param output `vectorDestination` - Output vector map. Path for new vector layer.
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
##' * output - outputVector - Output vector map
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_decimate <- function(input = qgisprocess::qgis_default_value(), zrange = qgisprocess::qgis_default_value(), cats = qgisprocess::qgis_default_value(), skip = qgisprocess::qgis_default_value(), preserve = qgisprocess::qgis_default_value(), offset = qgisprocess::qgis_default_value(), limit = qgisprocess::qgis_default_value(), zdiff = qgisprocess::qgis_default_value(), cell_limit = qgisprocess::qgis_default_value(), .g = qgisprocess::qgis_default_value(), .f = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .z = qgisprocess::qgis_default_value(), .x = qgisprocess::qgis_default_value(), .b = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:v.decimate")
  output <- qgisprocess::qgis_run_algorithm("grass7:v.decimate",`input` = input, `zrange` = zrange, `cats` = cats, `skip` = skip, `preserve` = preserve, `offset` = offset, `limit` = limit, `zdiff` = zdiff, `cell_limit` = cell_limit, `-g` = .g, `-f` = .f, `-c` = .c, `-z` = .z, `-x` = .x, `-b` = .b, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}