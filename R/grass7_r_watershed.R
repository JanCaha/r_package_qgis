##' QGIS Algorithm provided by GRASS r.watershed (grass7:r.watershed). Watershed basin analysis program.
##'
##' @title QGIS algorithm - r.watershed
##'
##' @param elevation `raster` - Elevation. Path to a raster layer.
##' @param depression `raster` - Locations of real depressions. Path to a raster layer.
##' @param flow `raster` - Amount of overland flow per cell. Path to a raster layer.
##' @param disturbed_land `raster` - Percent of disturbed land, for USLE. Path to a raster layer.
##' @param blocking `raster` - Terrain blocking overland surface flow, for USLE. Path to a raster layer.
##' @param threshold `number` - Minimum size of exterior watershed basin. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param max_slope_length `number` - Maximum length of surface flow, for USLE. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param convergence `number` - Convergence factor for MFD (1-10). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param memory `number` - Maximum memory to be used with -m flag (in MB). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .s `boolean` - Enable Single Flow Direction (D8) flow (default is Multiple Flow Direction). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -s.
##' @param .m `boolean` - Enable disk swap memory option (-m): Operation is slow. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -m.
##' @param .arg_4 `boolean` - Allow only horizontal and vertical flow of water. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -4.
##' @param .a `boolean` - Use positive flow accumulation even for likely underestimates. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -a.
##' @param .b `boolean` - Beautify flat areas. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -b.
##' @param accumulation `rasterDestination` - Number of cells that drain through each cell. Path for new raster layer.
##' @param drainage `rasterDestination` - Drainage direction. Path for new raster layer.
##' @param basin `rasterDestination` - Unique label for each watershed basin. Path for new raster layer.
##' @param stream `rasterDestination` - Stream segments. Path for new raster layer.
##' @param half_basin `rasterDestination` - Half-basins. Path for new raster layer.
##' @param length_slope `rasterDestination` - Slope length and steepness (LS) factor for USLE. Path for new raster layer.
##' @param slope_steepness `rasterDestination` - Slope steepness (S) factor for USLE. Path for new raster layer.
##' @param tci `rasterDestination` - Topographic index ln(a \code{/} tan(b)). Path for new raster layer.
##' @param spi `rasterDestination` - Stream power index a * tan(b). Path for new raster layer.
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
##' * accumulation - outputRaster - Number of cells that drain through each cell
##' * basin - outputRaster - Unique label for each watershed basin
##' * drainage - outputRaster - Drainage direction
##' * half_basin - outputRaster - Half-basins
##' * length_slope - outputRaster - Slope length and steepness (LS) factor for USLE
##' * slope_steepness - outputRaster - Slope steepness (S) factor for USLE
##' * spi - outputRaster - Stream power index a * tan(b)
##' * stream - outputRaster - Stream segments
##' * tci - outputRaster - Topographic index ln(a \code{/} tan(b))
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_watershed <- function(elevation = qgisprocess:::qgis_default_value(), depression = qgisprocess:::qgis_default_value(), flow = qgisprocess:::qgis_default_value(), disturbed_land = qgisprocess:::qgis_default_value(), blocking = qgisprocess:::qgis_default_value(), threshold = qgisprocess:::qgis_default_value(), max_slope_length = qgisprocess:::qgis_default_value(), convergence = qgisprocess:::qgis_default_value(), memory = qgisprocess:::qgis_default_value(), .s = qgisprocess:::qgis_default_value(), .m = qgisprocess:::qgis_default_value(), .arg_4 = qgisprocess:::qgis_default_value(), .a = qgisprocess:::qgis_default_value(), .b = qgisprocess:::qgis_default_value(), accumulation = qgisprocess:::qgis_default_value(), drainage = qgisprocess:::qgis_default_value(), basin = qgisprocess:::qgis_default_value(), stream = qgisprocess:::qgis_default_value(), half_basin = qgisprocess:::qgis_default_value(), length_slope = qgisprocess:::qgis_default_value(), slope_steepness = qgisprocess:::qgis_default_value(), tci = qgisprocess:::qgis_default_value(), spi = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.watershed")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.watershed", `elevation` = elevation, `depression` = depression, `flow` = flow, `disturbed_land` = disturbed_land, `blocking` = blocking, `threshold` = threshold, `max_slope_length` = max_slope_length, `convergence` = convergence, `memory` = memory, `-s` = .s, `-m` = .m, `-4` = .arg_4, `-a` = .a, `-b` = .b, `accumulation` = accumulation, `drainage` = drainage, `basin` = basin, `stream` = stream, `half_basin` = half_basin, `length_slope` = length_slope, `slope_steepness` = slope_steepness, `tci` = tci, `spi` = spi, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.watershed", `elevation` = elevation, `depression` = depression, `flow` = flow, `disturbed_land` = disturbed_land, `blocking` = blocking, `threshold` = threshold, `max_slope_length` = max_slope_length, `convergence` = convergence, `memory` = memory, `-s` = .s, `-m` = .m, `-4` = .arg_4, `-a` = .a, `-b` = .b, `accumulation` = accumulation, `drainage` = drainage, `basin` = basin, `stream` = stream, `half_basin` = half_basin, `length_slope` = length_slope, `slope_steepness` = slope_steepness, `tci` = tci, `spi` = spi, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "accumulation")
  }
}