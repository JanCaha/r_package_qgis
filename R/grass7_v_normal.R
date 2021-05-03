##' QGIS Algorithm provided by GRASS v.normal (grass7:v.normal)
##'
##' @title QGIS algorithm v.normal
##'
##' @param map `source` - point vector defining sample points. Path to a vector layer.
##' @param tests `string` - Lists of tests (1-15): e.g. 1,3-8,13. String value.
##' @param column `field` - Attribute column. The name of an existing field. ; delimited list of existing field names.
##' @param .r `boolean` - Use only points in current region. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param .l `boolean` - lognormal. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -l.
##' @param html `fileDestination` - Normality. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Normality
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_normal <- function(map = qgisprocess::qgis_default_value(), tests = qgisprocess::qgis_default_value(), column = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), .l = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:v.normal")
  output <- qgisprocess::qgis_run_algorithm("grass7:v.normal",`map` = map, `tests` = tests, `column` = column, `-r` = .r, `-l` = .l, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}