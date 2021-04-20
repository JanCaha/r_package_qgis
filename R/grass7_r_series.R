##' QGIS Algorithm provided by GRASS r.series (grass7:r.series)
##'
##' @title QGIS algorithm r.series
##'
##' @param input `multilayer` - Input raster layer(s). .
##' @param .n `boolean` - Propagate NULLs. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param method `enum`  of `("average", "count", "median", "mode", "minimum", "min_raster", "maximum", "max_raster", "stddev", "range", "sum", "variance", "diversity", "slope", "offset", "detcoeff", "quart1", "quart3", "perc90", "skewness", "kurtosis", "quantile")` - Aggregate operation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param quantile `string` - Quantile to calculate for method=quantile. String value.
##' @param weights `string` - Weighting factor for each input map, default value is 1.0. String value.
##' @param range `range` - Ignore values outside this range (lo,hi). Two comma separated numeric values, e.g. '1,10'.
##' @param output `rasterDestination` - Aggregated. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Aggregated
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_series <- function(input = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), quantile = qgisprocess::qgis_default_value(), weights = qgisprocess::qgis_default_value(), range = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.series",`input` = input, `-n` = .n, `method` = method, `quantile` = quantile, `weights` = weights, `range` = range, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}