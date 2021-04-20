##' QGIS Algorithm provided by GRASS i.segment (grass7:i.segment)
##'
##' @title QGIS algorithm i.segment
##'
##' @param input `multilayer` - Input rasters. .
##' @param threshold `number` - Difference threshold between 0 and 1. A numeric value.
##' @param method `enum`  of `("region_growing")` - Segmentation method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param similarity `enum`  of `("euclidean", "manhattan")` - Similarity calculation method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param minsize `number` - Minimum number of cells in a segment. A numeric value.
##' @param memory `number` - Amount of memory to use in MB. A numeric value.
##' @param iterations `number` - Maximum number of iterations. A numeric value.
##' @param seeds `raster` - Name for input raster map with starting seeds. Path to a raster layer.
##' @param bounds `raster` - Name of input bounding/constraining raster map. Path to a raster layer.
##' @param .d `boolean` - Use 8 neighbors (3x3 neighborhood) instead of the default 4 neighbors for each pixel. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -d.
##' @param .w `boolean` - Weighted input, do not perform the default scaling of input raster maps. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -w.
##' @param output `rasterDestination` - Segmented Raster. Path for new raster layer.
##' @param goodness `rasterDestination` - Goodness Raster. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Segmented Raster
##' * goodness - outputRaster - Goodness Raster
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_segment <- function(input = qgisprocess::qgis_default_value(), threshold = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), similarity = qgisprocess::qgis_default_value(), minsize = qgisprocess::qgis_default_value(), memory = qgisprocess::qgis_default_value(), iterations = qgisprocess::qgis_default_value(), seeds = qgisprocess::qgis_default_value(), bounds = qgisprocess::qgis_default_value(), .d = qgisprocess::qgis_default_value(), .w = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), goodness = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:i.segment",`input` = input, `threshold` = threshold, `method` = method, `similarity` = similarity, `minsize` = minsize, `memory` = memory, `iterations` = iterations, `seeds` = seeds, `bounds` = bounds, `-d` = .d, `-w` = .w, `output` = output, `goodness` = goodness, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}