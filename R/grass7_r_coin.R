##' QGIS Algorithm provided by GRASS r.coin (grass7:r.coin)
##'
##' @title QGIS algorithm r.coin
##'
##' @param first `raster` - Name of first raster map. Path to a raster layer.
##' @param second `raster` - Name of second raster map. Path to a raster layer.
##' @param units `enum`  of `("c", "p", "x", "y", "a", "h", "k", "m")` - Unit of measure. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .w `boolean` - Wide report, 132 columns (default: 80). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -w.
##' @param html `fileDestination` - Coincidence report. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Coincidence report
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_coin <- function(first = qgisprocess::qgis_default_value(), second = qgisprocess::qgis_default_value(), units = qgisprocess::qgis_default_value(), .w = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.coin")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.coin",`first` = first, `second` = second, `units` = units, `-w` = .w, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}