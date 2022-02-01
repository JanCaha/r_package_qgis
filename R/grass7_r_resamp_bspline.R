##' QGIS Algorithm provided by GRASS r.resamp.bspline (grass7:r.resamp.bspline)
##'
##' @title QGIS algorithm r.resamp.bspline
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param mask `raster` - Name of raster map to use for masking. Only cells that are not NULL and not zero are interpolated. Path to a raster layer.
##' @param method `enum`  of `("bilinear", "bicubic")` - Sampling interpolation method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ew_step `number` - Length (float) of each spline step in the east-west direction. A numeric value.
##' @param ns_step `number` - Length (float) of each spline step in the north-south direction. A numeric value.
##' @param lambda `number` - Tykhonov regularization parameter (affects smoothing). A numeric value.
##' @param memory `number` - Maximum memory to be used (in MB). Cache size for raster rows. A numeric value.
##' @param .n `boolean` - Only interpolate null cells in input raster map. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param .c `boolean` - Find the best Tykhonov regularizing parameter using a "leave-one-out" cross validation method. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param output `rasterDestination` - Resampled BSpline. Path for new raster layer.
##' @param grid `vectorDestination` - Interpolation Grid. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Resampled BSpline
##' * grid - outputVector - Interpolation Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_resamp_bspline <- function(input = qgisprocess::qgis_default_value(), mask = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), ew_step = qgisprocess::qgis_default_value(), ns_step = qgisprocess::qgis_default_value(), lambda = qgisprocess::qgis_default_value(), memory = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), grid = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.resamp.bspline")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.resamp.bspline", `input` = input, `mask` = mask, `method` = method, `ew_step` = ew_step, `ns_step` = ns_step, `lambda` = lambda, `memory` = memory, `-n` = .n, `-c` = .c, `output` = output, `grid` = grid, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}