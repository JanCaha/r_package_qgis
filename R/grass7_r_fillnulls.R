##' QGIS Algorithm provided by GRASS r.fillnulls (grass7:r.fillnulls)
##'
##' @title QGIS algorithm r.fillnulls
##'
##' @param input `raster` - Input raster layer to fill. Path to a raster layer.
##' @param method `enum`  of `("bilinear", "bicubic", "rst")` - Interpolation method to use. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param tension `number` - Spline tension parameter. A numeric value.
##' @param smooth `number` - Spline smoothing parameter. A numeric value.
##' @param edge `number` - Width of hole edge used for interpolation (in cells). A numeric value.
##' @param npmin `number` - Minimum number of points for approximation in a segment (segmax). A numeric value.
##' @param segmax `number` - Maximum number of points in a segment. A numeric value.
##' @param lambda `number` - Tykhonov regularization parameter (affects smoothing). A numeric value.
##' @param output `rasterDestination` - Filled. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Filled
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_fillnulls <- function(input = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), tension = qgisprocess::qgis_default_value(), smooth = qgisprocess::qgis_default_value(), edge = qgisprocess::qgis_default_value(), npmin = qgisprocess::qgis_default_value(), segmax = qgisprocess::qgis_default_value(), lambda = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.fillnulls")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.fillnulls",`input` = input, `method` = method, `tension` = tension, `smooth` = smooth, `edge` = edge, `npmin` = npmin, `segmax` = segmax, `lambda` = lambda, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}