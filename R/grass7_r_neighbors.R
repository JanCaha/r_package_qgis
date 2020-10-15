##' QGIS Algorithm provided by GRASS r.neighbors (grass7:r.neighbors)
##'
##' @title QGIS algorithm r.neighbors
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param selection `raster` - Raster layer to select the cells which should be processed. Path to a raster layer.
##' @param method `enum`  of `("average", "median", "mode", "minimum", "maximum", "stddev", "sum", "variance", "diversity", "interspersion")` - Neighborhood operation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param size `number` - Neighborhood size. A numeric value.
##' @param gauss `number` - Sigma (in cells) for Gaussian filter. A numeric value.
##' @param quantile `string` - Quantile to calculate for method=quantile. String value.
##' @param .c `boolean` - Use circular neighborhood. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .a `boolean` - Do not align output with the input. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param weight `file` - File containing weights. Path to a file.
##' @param output `rasterDestination` - Neighbors. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Neighbors
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_neighbors <- function(input = qgisprocess::qgis_default_value(), selection = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), size = qgisprocess::qgis_default_value(), gauss = qgisprocess::qgis_default_value(), quantile = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), weight = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.neighbors",`input` = input, `selection` = selection, `method` = method, `size` = size, `gauss` = gauss, `quantile` = quantile, `-c` = .c, `-a` = .a, `weight` = weight, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
}
}