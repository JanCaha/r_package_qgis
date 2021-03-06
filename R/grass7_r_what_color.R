##' QGIS Algorithm provided by GRASS r.what.color (grass7:r.what.color)
##'
##' @title QGIS algorithm r.what.color
##'
##' @param input `raster` - Raster map to query colors. Path to a raster layer.
##' @param value `string` - Values to query colors for (comma separated list). String value.
##' @param format `string` - Output format (printf-style). String value.
##' @param html `fileDestination` - Colors file. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Colors file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_what_color <- function(input = qgisprocess::qgis_default_value(), value = qgisprocess::qgis_default_value(), format = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.what.color")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.what.color", `input` = input, `value` = value, `format` = format, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}