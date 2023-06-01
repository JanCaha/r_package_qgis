##' QGIS Algorithm provided by GRASS r.resamp.rst (grass7:r.resamp.rst)
##'
##' @title QGIS algorithm r.resamp.rst
##'
##' @param input `raster` - Raster layer. Path to a raster layer.
##' @param smooth `raster` - Input raster map containing smoothing. Path to a raster layer.
##' @param maskmap `raster` - Input raster map to be used as mask. Path to a raster layer.
##' @param ew_res `number` - Desired east-west resolution. A numeric value.
##' @param ns_res `number` - Desired north-south resolution. A numeric value.
##' @param overlap `number` - Rows/columns overlap for segmentation. A numeric value.
##' @param zscale `number` - Multiplier for z-values. A numeric value.
##' @param tension `number` - Spline tension value. A numeric value.
##' @param theta `number` - Anisotropy angle (in degrees counterclockwise from East). A numeric value.
##' @param scalex `number` - Anisotropy scaling factor. A numeric value.
##' @param .t `boolean` - Use dnorm independent tension. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param .d `boolean` - Output partial derivatives instead of topographic parameters. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -d.
##' @param elevation `rasterDestination` - Resampled RST. Path for new raster layer.
##' @param slope `rasterDestination` - Slope raster. Path for new raster layer.
##' @param aspect `rasterDestination` - Aspect raster. Path for new raster layer.
##' @param pcurvature `rasterDestination` - Profile curvature raster. Path for new raster layer.
##' @param tcurvature `rasterDestination` - Tangential curvature raster. Path for new raster layer.
##' @param mcurvature `rasterDestination` - Mean curvature raster. Path for new raster layer.
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
##' * aspect - outputRaster - Aspect raster
##' * elevation - outputRaster - Resampled RST
##' * mcurvature - outputRaster - Mean curvature raster
##' * pcurvature - outputRaster - Profile curvature raster
##' * slope - outputRaster - Slope raster
##' * tcurvature - outputRaster - Tangential curvature raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_resamp_rst <- function(input = qgisprocess:::qgis_default_value(), smooth = qgisprocess:::qgis_default_value(), maskmap = qgisprocess:::qgis_default_value(), ew_res = qgisprocess:::qgis_default_value(), ns_res = qgisprocess:::qgis_default_value(), overlap = qgisprocess:::qgis_default_value(), zscale = qgisprocess:::qgis_default_value(), tension = qgisprocess:::qgis_default_value(), theta = qgisprocess:::qgis_default_value(), scalex = qgisprocess:::qgis_default_value(), .t = qgisprocess:::qgis_default_value(), .d = qgisprocess:::qgis_default_value(), elevation = qgisprocess:::qgis_default_value(), slope = qgisprocess:::qgis_default_value(), aspect = qgisprocess:::qgis_default_value(), pcurvature = qgisprocess:::qgis_default_value(), tcurvature = qgisprocess:::qgis_default_value(), mcurvature = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.resamp.rst")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.resamp.rst", `input` = input, `smooth` = smooth, `maskmap` = maskmap, `ew_res` = ew_res, `ns_res` = ns_res, `overlap` = overlap, `zscale` = zscale, `tension` = tension, `theta` = theta, `scalex` = scalex, `-t` = .t, `-d` = .d, `elevation` = elevation, `slope` = slope, `aspect` = aspect, `pcurvature` = pcurvature, `tcurvature` = tcurvature, `mcurvature` = mcurvature, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.resamp.rst", `input` = input, `smooth` = smooth, `maskmap` = maskmap, `ew_res` = ew_res, `ns_res` = ns_res, `overlap` = overlap, `zscale` = zscale, `tension` = tension, `theta` = theta, `scalex` = scalex, `-t` = .t, `-d` = .d, `elevation` = elevation, `slope` = slope, `aspect` = aspect, `pcurvature` = pcurvature, `tcurvature` = tcurvature, `mcurvature` = mcurvature, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "aspect")
  }
}