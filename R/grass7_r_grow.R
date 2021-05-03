##' QGIS Algorithm provided by GRASS r.grow (grass7:r.grow)
##'
##' @title QGIS algorithm r.grow
##'
##' @param input `raster` - input raster layer. Path to a raster layer.
##' @param radius `number` - Radius of buffer in raster cells. A numeric value.
##' @param metric `enum`  of `("euclidean", "maximum", "manhattan")` - Metric. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param old `number` - Value to write for input cells which are non-NULL (-1 = NULL). A numeric value.
##' @param new `number` - Value to write for "grown" cells. A numeric value.
##' @param .m `boolean` - Radius is in map units rather than cells. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -m.
##' @param output `rasterDestination` - Expanded. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Expanded
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_grow <- function(input = qgisprocess::qgis_default_value(), radius = qgisprocess::qgis_default_value(), metric = qgisprocess::qgis_default_value(), old = qgisprocess::qgis_default_value(), new = qgisprocess::qgis_default_value(), .m = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.grow")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.grow",`input` = input, `radius` = radius, `metric` = metric, `old` = old, `new` = new, `-m` = .m, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}