##' QGIS Algorithm provided by GRASS i.landsat.acca (grass7:i.landsat.acca)
##'
##' @title QGIS algorithm i.landsat.acca
##'
##' @param rasters `multilayer` - Landsat input rasters. .
##' @param b56composite `number` - B56composite (step 6). A numeric value.
##' @param b45ratio `number` - B45ratio: Desert detection (step 10). A numeric value.
##' @param histogram `number` - Number of classes in the cloud temperature histogram. A numeric value.
##' @param .arg_5 `boolean` - Data is Landsat-5 TM. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .f `boolean` - Apply post-processing filter to remove small holes. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .x `boolean` - Always use cloud signature (step 14). 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .arg_2 `boolean` - Bypass second-pass processing, and merge warm (not ambiguous) and cold clouds. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .s `boolean` - Include a category for cloud shadows. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param output `rasterDestination` - ACCA Raster. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - ACCA Raster
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_landsat_acca <- function(rasters = qgisprocess::qgis_default_value(), b56composite = qgisprocess::qgis_default_value(), b45ratio = qgisprocess::qgis_default_value(), histogram = qgisprocess::qgis_default_value(), .arg_5 = qgisprocess::qgis_default_value(), .f = qgisprocess::qgis_default_value(), .x = qgisprocess::qgis_default_value(), .arg_2 = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:i.landsat.acca",`rasters` = rasters, `b56composite` = b56composite, `b45ratio` = b45ratio, `histogram` = histogram, `-5` = .arg_5, `-f` = .f, `-x` = .x, `-2` = .arg_2, `-s` = .s, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
}
}