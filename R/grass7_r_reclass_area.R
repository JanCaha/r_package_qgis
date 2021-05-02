##' QGIS Algorithm provided by GRASS r.reclass.area (grass7:r.reclass.area)
##'
##' @title QGIS algorithm r.reclass.area
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param value `number` - Value option that sets the area size limit (hectares). A numeric value.
##' @param mode `enum`  of `("lesser", "greater")` - Lesser or greater than specified value. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param method `enum`  of `("reclass", "rmarea")` - Method used for reclassification. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .c `boolean` - Input map is clumped. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .d `boolean` - Clumps including diagonal neighbors. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -d.
##' @param output `rasterDestination` - Reclassified. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Reclassified
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_reclass_area <- function(input = qgisprocess::qgis_default_value(), value = qgisprocess::qgis_default_value(), mode = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .d = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.reclass.area")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.reclass.area",`input` = input, `value` = value, `mode` = mode, `method` = method, `-c` = .c, `-d` = .d, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}