##' QGIS Algorithm provided by GRASS r.category (grass7:r.category)
##'
##' @title QGIS algorithm r.category
##'
##' @param map `raster` - Name of raster map. Path to a raster layer.
##' @param separator `string` - Field separator (Special characters: pipe, comma, space, tab, newline). String value.
##' @param rules `file` - File containing category label rules. Path to a file.
##' @param txtrules `string` - Inline category label rules. String value.
##' @param raster `raster` - Raster map from which to copy category table. Path to a raster layer.
##' @param format `string` - Default label or format string for dynamic labeling. Used when no explicit label exists for the category. String value.
##' @param coefficients `string` - Dynamic label coefficients. Two pairs of category multiplier and offsets, for $1 and $2. String value.
##' @param output `rasterDestination` - Category. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Category
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_category <- function(map = qgisprocess::qgis_default_value(), separator = qgisprocess::qgis_default_value(), rules = qgisprocess::qgis_default_value(), txtrules = qgisprocess::qgis_default_value(), raster = qgisprocess::qgis_default_value(), format = qgisprocess::qgis_default_value(), coefficients = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.category")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.category",`map` = map, `separator` = separator, `rules` = rules, `txtrules` = txtrules, `raster` = raster, `format` = format, `coefficients` = coefficients, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}