##' QGIS Algorithm provided by GRASS r.surf.area (grass7:r.surf.area)
##'
##' @title QGIS algorithm r.surf.area
##'
##' @param map `raster` - Input layer. Path to a raster layer.
##' @param vscale `number` - Vertical scale. A numeric value.
##' @param units `enum`  of `("miles", "feet", "meters", "kilometers", "acres", "hectares")` - Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param html `fileDestination` - Area. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Area
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_surf_area <- function(map = qgisprocess::qgis_default_value(), vscale = qgisprocess::qgis_default_value(), units = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.surf.area",`map` = map, `vscale` = vscale, `units` = units, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}