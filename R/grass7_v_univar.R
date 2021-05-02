##' QGIS Algorithm provided by GRASS v.univar (grass7:v.univar)
##'
##' @title QGIS algorithm v.univar
##'
##' @param map `source` - Name of input vector map. Path to a vector layer.
##' @param type `enum`  of `("point", "line", "boundary", "centroid", "area")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param column `field` - Column name. The name of an existing field. ; delimited list of existing field names.
##' @param percentile `number` - Percentile to calculate. A numeric value.
##' @param .g `boolean` - Print the stats in shell script style. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -g.
##' @param .e `boolean` - Calculate extended statistics. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.
##' @param .w `boolean` - Weigh by line length or area size. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -w.
##' @param .d `boolean` - Calculate geometric distances instead of attribute statistics. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -d.
##' @param html `fileDestination` - Statistics. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Statistics
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_univar <- function(map = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), column = qgisprocess::qgis_default_value(), percentile = qgisprocess::qgis_default_value(), .g = qgisprocess::qgis_default_value(), .e = qgisprocess::qgis_default_value(), .w = qgisprocess::qgis_default_value(), .d = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:v.univar")
  output <- qgisprocess::qgis_run_algorithm("grass7:v.univar",`map` = map, `type` = type, `where` = where, `column` = column, `percentile` = percentile, `-g` = .g, `-e` = .e, `-w` = .w, `-d` = .d, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}