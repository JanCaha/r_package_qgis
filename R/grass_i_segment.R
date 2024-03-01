##' QGIS Algorithm provided by GRASS i.segment (grass:i.segment). Identifies segments (objects) from imagery data.
##'
##' @title QGIS algorithm - i.segment
##'
##' @param input `multilayer` - Input rasters. .
##' @param threshold `number` - Difference threshold between 0 and 1. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param method `enum`  of `("region_growing")` - Segmentation method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param similarity `enum`  of `("euclidean", "manhattan")` - Similarity calculation method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param minsize `number` - Minimum number of cells in a segment. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param memory `number` - Amount of memory to use in MB. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param iterations `number` - Maximum number of iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param seeds `raster` - Name for input raster map with starting seeds. Path to a raster layer.
##' @param bounds `raster` - Name of input bounding\code{/}constraining raster map. Path to a raster layer.
##' @param .d `boolean` - Use 8 neighbors (3x3 neighborhood) instead of the default 4 neighbors for each pixel. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -d.
##' @param .w `boolean` - Weighted input, do not perform the default scaling of input raster maps. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -w.
##' @param output `rasterDestination` - Segmented Raster. Path for new raster layer.
##' @param goodness `rasterDestination` - Goodness Raster. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * goodness - outputRaster - Goodness Raster
##' * output - outputRaster - Segmented Raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_i_segment <- function(input = qgisprocess:::qgis_default_value(), threshold = qgisprocess:::qgis_default_value(), method = qgisprocess:::qgis_default_value(), similarity = qgisprocess:::qgis_default_value(), minsize = qgisprocess:::qgis_default_value(), memory = qgisprocess:::qgis_default_value(), iterations = qgisprocess:::qgis_default_value(), seeds = qgisprocess:::qgis_default_value(), bounds = qgisprocess:::qgis_default_value(), .d = qgisprocess:::qgis_default_value(), .w = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), goodness = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:i.segment")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:i.segment", `input` = input, `threshold` = threshold, `method` = method, `similarity` = similarity, `minsize` = minsize, `memory` = memory, `iterations` = iterations, `seeds` = seeds, `bounds` = bounds, `-d` = .d, `-w` = .w, `output` = output, `goodness` = goodness, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:i.segment", `input` = input, `threshold` = threshold, `method` = method, `similarity` = similarity, `minsize` = minsize, `memory` = memory, `iterations` = iterations, `seeds` = seeds, `bounds` = bounds, `-d` = .d, `-w` = .w, `output` = output, `goodness` = goodness, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "goodness")
  }
}