##' QGIS Algorithm provided by GRASS r.univar (grass7:r.univar)
##'
##' @title QGIS algorithm r.univar
##'
##' @param map `multilayer` - Name of raster map(s). .
##' @param zones `raster` - Raster map used for zoning, must be of type CELL. Path to a raster layer.
##' @param percentile `string` - Percentile to calculate (comma separated list if multiple) (requires extended statistics flag). String value.
##' @param separator `string` - Field separator. Special characters: pipe, comma, space, tab, newline. String value.
##' @param .e `boolean` - Calculate extended statistics. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.
##' @param output `fileDestination` - Univariate results. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Univariate results
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_univar <- function(map = qgisprocess::qgis_default_value(), zones = qgisprocess::qgis_default_value(), percentile = qgisprocess::qgis_default_value(), separator = qgisprocess::qgis_default_value(), .e = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.univar")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.univar",`map` = map, `zones` = zones, `percentile` = percentile, `separator` = separator, `-e` = .e, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}