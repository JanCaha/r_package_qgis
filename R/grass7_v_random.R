##' QGIS Algorithm provided by GRASS v.random (grass7:v.random)
##'
##' @title QGIS algorithm v.random
##'
##' @param npoints `number` - Number of points to be created. A numeric value.
##' @param restrict `source` - Restrict points to areas in input vector. Path to a vector layer.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param zmin `number` - Minimum z height for 3D output. A numeric value.
##' @param zmax `number` - Maximum z height for 3D output. A numeric value.
##' @param seed `number` - Seed for random number generation. A numeric value.
##' @param column `string` - Column for Z values. String value.
##' @param column_type `enum`  of `("integer", "double precision")` - Type of column for z values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .z `boolean` - Create 3D output. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -z.
##' @param .a `boolean` - Generate n points for each individual area. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.
##' @param output `vectorDestination` - Random. Path for new vector layer.
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
##' * output - outputVector - Random
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_random <- function(npoints = qgisprocess::qgis_default_value(), restrict = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), zmin = qgisprocess::qgis_default_value(), zmax = qgisprocess::qgis_default_value(), seed = qgisprocess::qgis_default_value(), column = qgisprocess::qgis_default_value(), column_type = qgisprocess::qgis_default_value(), .z = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:v.random")

  output <- qgisprocess::qgis_run_algorithm("grass7:v.random", `npoints` = npoints, `restrict` = restrict, `where` = where, `zmin` = zmin, `zmax` = zmax, `seed` = seed, `column` = column, `column_type` = column_type, `-z` = .z, `-a` = .a, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}