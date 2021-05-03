##' QGIS Algorithm provided by GRASS r.proj (grass7:r.proj)
##'
##' @title QGIS algorithm r.proj
##'
##' @param input `raster` - Input raster to reproject. Path to a raster layer.
##' @param crs `crs` - New coordinate reference system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param method `enum`  of `("nearest", "bilinear", "bicubic", "lanczos", "bilinear_f", "bicubic_f", "lanczos_f")` - Interpolation method to use. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param memory `number` - Maximum memory to be used (in MB). A numeric value.
##' @param resolution `number` - Resolution of output raster map. A numeric value.
##' @param .n `boolean` - Do not perform region cropping optimization. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param output `rasterDestination` - Reprojected raster. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Reprojected raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_proj <- function(input = qgisprocess::qgis_default_value(), crs = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), memory = qgisprocess::qgis_default_value(), resolution = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.proj")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.proj", `input` = input, `crs` = crs, `method` = method, `memory` = memory, `resolution` = resolution, `-n` = .n, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}