##' QGIS Algorithm provided by GRASS v.report (grass7:v.report)
##'
##' @title QGIS algorithm v.report
##'
##' @param map `source` - Input layer. Path to a vector layer.
##' @param option `enum`  of `("area", "length", "coor")` - Value to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param units `enum`  of `("miles", "feet", "meters", "kilometers", "acres", "hectares", "percent")` - units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param sort `enum`  of `("asc", "desc")` - Sort the result (ascending, descending). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param html `fileDestination` - Report. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Report
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_report <- function(map = qgisprocess::qgis_default_value(), option = qgisprocess::qgis_default_value(), units = qgisprocess::qgis_default_value(), sort = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:v.report")

  output <- qgisprocess::qgis_run_algorithm("grass7:v.report", `map` = map, `option` = option, `units` = units, `sort` = sort, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}