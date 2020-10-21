##' QGIS Algorithm provided by GRASS r.flow (grass7:r.flow)
##'
##' @title QGIS algorithm r.flow
##'
##' @param elevation `raster` - Elevation. Path to a raster layer.
##' @param aspect `raster` - Aspect. Path to a raster layer.
##' @param barrier `raster` - Barrier. Path to a raster layer.
##' @param skip `number` - Number of cells between flowlines. A numeric value.
##' @param bound `number` - Maximum number of segments per flowline. A numeric value.
##' @param .u `boolean` - Compute upslope flowlines instead of default downhill flowlines. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .arg_3 `boolean` - 3-D lengths instead of 2-D. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .m `boolean` - Use less memory, at a performance penalty. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param flowline `vectorDestination` - Flow line. Path for new vector layer.
##' @param flowlength `rasterDestination` - Flow path length. Path for new raster layer.
##' @param flowaccumulation `rasterDestination` - Flow accumulation. Path for new raster layer.
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
##' * flowline - outputVector - Flow line
##' * flowlength - outputRaster - Flow path length
##' * flowaccumulation - outputRaster - Flow accumulation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_flow <- function(elevation = qgisprocess::qgis_default_value(), aspect = qgisprocess::qgis_default_value(), barrier = qgisprocess::qgis_default_value(), skip = qgisprocess::qgis_default_value(), bound = qgisprocess::qgis_default_value(), .u = qgisprocess::qgis_default_value(), .arg_3 = qgisprocess::qgis_default_value(), .m = qgisprocess::qgis_default_value(), flowline = qgisprocess::qgis_default_value(), flowlength = qgisprocess::qgis_default_value(), flowaccumulation = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.flow",`elevation` = elevation, `aspect` = aspect, `barrier` = barrier, `skip` = skip, `bound` = bound, `-u` = .u, `-3` = .arg_3, `-m` = .m, `flowline` = flowline, `flowlength` = flowlength, `flowaccumulation` = flowaccumulation, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "flowline")
  }
}