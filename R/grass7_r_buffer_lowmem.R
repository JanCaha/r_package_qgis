##' QGIS Algorithm provided by GRASS r.buffer.lowmem (grass7:r.buffer.lowmem)
##'
##' @title QGIS algorithm r.buffer.lowmem
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param distances `string` - Distance zone(s) (e.g. 100,200,300). String value.
##' @param units `enum`  of `("meters", "kilometers", "feet", "miles", "nautmiles")` - Units of distance. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .z `boolean` - Ignore zero (0) data cells instead of NULL cells. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -z.
##' @param output `rasterDestination` - Buffer. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Buffer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_buffer_lowmem <- function(input = qgisprocess::qgis_default_value(), distances = qgisprocess::qgis_default_value(), units = qgisprocess::qgis_default_value(), .z = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.buffer.lowmem")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.buffer.lowmem",`input` = input, `distances` = distances, `units` = units, `-z` = .z, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}