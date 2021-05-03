##' QGIS Algorithm provided by GRASS r.info (grass7:r.info)
##'
##' @title QGIS algorithm r.info
##'
##' @param map `raster` - Raster layer. Path to a raster layer.
##' @param .r `boolean` - Print range only. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param .g `boolean` - Print raster array information in shell script style. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -g.
##' @param .h `boolean` - Print raster history instead of info. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -h.
##' @param .e `boolean` - Print extended metadata information in shell script style. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.
##' @param html `fileDestination` - Basic information. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Basic information
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_info <- function(map = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), .g = qgisprocess::qgis_default_value(), .h = qgisprocess::qgis_default_value(), .e = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.info")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.info",`map` = map, `-r` = .r, `-g` = .g, `-h` = .h, `-e` = .e, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}