##' QGIS Algorithm provided by GRASS v.surf.bspline (grass7:v.surf.bspline)
##'
##' @title QGIS algorithm v.surf.bspline
##'
##' @param input `source` - Input points layer. Path to a vector layer.
##' @param column `field` - Attribute table column with values to interpolate. The name of an existing field. ; delimited list of existing field names.
##' @param sparse_input `source` - Sparse points layer. Path to a vector layer.
##' @param ew_step `number` - Length of each spline step in the east-west direction. A numeric value.
##' @param ns_step `number` - Length of each spline step in the north-south direction. A numeric value.
##' @param method `enum`  of `("bilinear", "bicubic")` - Spline interpolation algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param lambda_i `number` - Tykhonov regularization parameter (affects smoothing). A numeric value.
##' @param solver `enum`  of `("cholesky", "cg")` - Type of solver which should solve the symmetric linear equation system. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param maxit `number` - Maximum number of iteration used to solve the linear equation system. A numeric value.
##' @param error `number` - Error break criteria for iterative solver. A numeric value.
##' @param memory `number` - Maximum memory to be used (in MB). A numeric value.
##' @param output `vectorDestination` - Output vector. Path for new vector layer.
##' @param raster_output `rasterDestination` - Interpolated spline. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
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
##' * output - outputVector - Output vector
##' * raster_output - outputRaster - Interpolated spline
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_surf_bspline <- function(input = qgisprocess::qgis_default_value(), column = qgisprocess::qgis_default_value(), sparse_input = qgisprocess::qgis_default_value(), ew_step = qgisprocess::qgis_default_value(), ns_step = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), lambda_i = qgisprocess::qgis_default_value(), solver = qgisprocess::qgis_default_value(), maxit = qgisprocess::qgis_default_value(), error = qgisprocess::qgis_default_value(), memory = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), raster_output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:v.surf.bspline")
  output <- qgisprocess::qgis_run_algorithm("grass7:v.surf.bspline",`input` = input, `column` = column, `sparse_input` = sparse_input, `ew_step` = ew_step, `ns_step` = ns_step, `method` = method, `lambda_i` = lambda_i, `solver` = solver, `maxit` = maxit, `error` = error, `memory` = memory, `output` = output, `raster_output` = raster_output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}