##' QGIS Algorithm provided by GRASS v.class (grass7:v.class)
##'
##' @title QGIS algorithm v.class
##'
##' @param map `source` - Input vector layer. Path to a vector layer.
##' @param column `field` - Column name or expression. The name of an existing field. ; delimited list of existing field names.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param algorithm `enum`  of `("int", "std", "qua", "equ")` - Algorithm to use for classification. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param nbclasses `number` - Number of classes to define. A numeric value.
##' @param .g `boolean` - Print only class breaks (without min and max). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -g.
##' @param html `fileDestination` - Classification. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Classification
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_class <- function(map = qgisprocess::qgis_default_value(), column = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), algorithm = qgisprocess::qgis_default_value(), nbclasses = qgisprocess::qgis_default_value(), .g = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:v.class")

  output <- qgisprocess::qgis_run_algorithm("grass7:v.class", `map` = map, `column` = column, `where` = where, `algorithm` = algorithm, `nbclasses` = nbclasses, `-g` = .g, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}