##' QGIS Algorithm provided by GRASS r.param.scale (grass7:r.param.scale)
##'
##' @title QGIS algorithm r.param.scale
##'
##' @param input `raster` - Name of input raster map. Path to a raster layer.
##' @param slope_tolerance `number` - Slope tolerance that defines a 'flat' surface (degrees). A numeric value.
##' @param curvature_tolerance `number` - Curvature tolerance that defines 'planar' surface. A numeric value.
##' @param size `number` - Size of processing window (odd number only, max: 69). A numeric value.
##' @param method `enum`  of `("elev", "slope", "aspect", "profc", "planc", "longc", "crosc", "minic", "maxic", "feature")` - Morphometric parameter in 'size' window to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param exponent `number` - Exponent for distance weighting (0.0-4.0). A numeric value.
##' @param zscale `number` - Vertical scaling factor. A numeric value.
##' @param .c `boolean` - Constrain model through central window cell. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param output `rasterDestination` - Morphometric parameter. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Morphometric parameter
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_param_scale <- function(input = qgisprocess:::qgis_default_value(), slope_tolerance = qgisprocess:::qgis_default_value(), curvature_tolerance = qgisprocess:::qgis_default_value(), size = qgisprocess:::qgis_default_value(), method = qgisprocess:::qgis_default_value(), exponent = qgisprocess:::qgis_default_value(), zscale = qgisprocess:::qgis_default_value(), .c = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.param.scale")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.param.scale", `input` = input, `slope_tolerance` = slope_tolerance, `curvature_tolerance` = curvature_tolerance, `size` = size, `method` = method, `exponent` = exponent, `zscale` = zscale, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.param.scale", `input` = input, `slope_tolerance` = slope_tolerance, `curvature_tolerance` = curvature_tolerance, `size` = size, `method` = method, `exponent` = exponent, `zscale` = zscale, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}