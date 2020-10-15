##' QGIS Algorithm provided by GRASS r.stream.extract (grass7:r.stream.extract)
##'
##' @title QGIS algorithm r.stream.extract
##'
##' @param elevation `raster` - Input map: elevation map. Path to a raster layer.
##' @param accumulation `raster` - Input map: accumulation map. Path to a raster layer.
##' @param depression `raster` - Input map: map with real depressions. Path to a raster layer.
##' @param threshold `number` - Minimum flow accumulation for streams. A numeric value.
##' @param mexp `number` - Montgomery exponent for slope. A numeric value.
##' @param stream_length `number` - Delete stream segments shorter than cells. A numeric value.
##' @param d8cut `number` - Use SFD above this threshold. A numeric value.
##' @param memory `number` - Maximum memory to be used (in MB). A numeric value.
##' @param stream_raster `rasterDestination` - Unique stream ids (rast). Path for new raster layer.
##' @param stream_vector `vectorDestination` - Unique stream ids (vect). Path for new vector layer.
##' @param direction `rasterDestination` - Flow direction. Path for new raster layer.
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
##' * stream_raster - outputRaster - Unique stream ids 
##' * stream_vector - outputVector - Unique stream ids 
##' * direction - outputRaster - Flow direction
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_stream_extract <- function(elevation = qgisprocess::qgis_default_value(), accumulation = qgisprocess::qgis_default_value(), depression = qgisprocess::qgis_default_value(), threshold = qgisprocess::qgis_default_value(), mexp = qgisprocess::qgis_default_value(), stream_length = qgisprocess::qgis_default_value(), d8cut = qgisprocess::qgis_default_value(), memory = qgisprocess::qgis_default_value(), stream_raster = qgisprocess::qgis_default_value(), stream_vector = qgisprocess::qgis_default_value(), direction = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.stream.extract",`elevation` = elevation, `accumulation` = accumulation, `depression` = depression, `threshold` = threshold, `mexp` = mexp, `stream_length` = stream_length, `d8cut` = d8cut, `memory` = memory, `stream_raster` = stream_raster, `stream_vector` = stream_vector, `direction` = direction, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "stream_raster")
}
}