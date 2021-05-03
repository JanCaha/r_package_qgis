##' QGIS Algorithm provided by GRASS r.stats.quantile.out (grass7:r.stats.quantile.out)
##'
##' @title QGIS algorithm r.stats.quantile.out
##'
##' @param base `raster` - Name of base raster map. Path to a raster layer.
##' @param cover `raster` - Name of cover raster map. Path to a raster layer.
##' @param quantiles `number` - Number of quantiles. A numeric value.
##' @param percentiles `string` - List of percentiles. String value.
##' @param bins `number` - Number of bins to use. A numeric value.
##' @param .r `boolean` - Create reclass map with statistics as category labels. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param file `fileDestination` - Statistics File. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * file - outputFile - Statistics File
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_stats_quantile_out <- function(base = qgisprocess::qgis_default_value(), cover = qgisprocess::qgis_default_value(), quantiles = qgisprocess::qgis_default_value(), percentiles = qgisprocess::qgis_default_value(), bins = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), file = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.stats.quantile.out")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.stats.quantile.out",`base` = base, `cover` = cover, `quantiles` = quantiles, `percentiles` = percentiles, `bins` = bins, `-r` = .r, `file` = file, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "file")
  }
}