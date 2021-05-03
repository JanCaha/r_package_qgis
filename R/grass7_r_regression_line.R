##' QGIS Algorithm provided by GRASS r.regression.line (grass7:r.regression.line)
##'
##' @title QGIS algorithm r.regression.line
##'
##' @param mapx `raster` - Layer for x coefficient. Path to a raster layer.
##' @param mapy `raster` - Layer for y coefficient. Path to a raster layer.
##' @param html `fileDestination` - Regression coefficients. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Regression coefficients
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_regression_line <- function(mapx = qgisprocess::qgis_default_value(), mapy = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.regression.line")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.regression.line", `mapx` = mapx, `mapy` = mapy, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}