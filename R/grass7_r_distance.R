##' QGIS Algorithm provided by GRASS r.distance (grass7:r.distance)
##'
##' @title QGIS algorithm r.distance
##'
##' @param map `multilayer` - Name of two input raster for computing inter-class distances. .
##' @param separator `string` - Field separator (Special characters: pipe, comma, space, tab, newline). String value.
##' @param sort `enum`  of `("asc", "desc")` - Sort output by distance. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .l `boolean` - Include category labels in the output. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .o `boolean` - Report zero distance if rasters are overlapping. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .n `boolean` - Report null objects as *. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param html `fileDestination` - Distance. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Distance
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_distance <- function(map = qgisprocess::qgis_default_value(), separator = qgisprocess::qgis_default_value(), sort = qgisprocess::qgis_default_value(), .l = qgisprocess::qgis_default_value(), .o = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.distance",`map` = map, `separator` = separator, `sort` = sort, `-l` = .l, `-o` = .o, `-n` = .n, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}