##' QGIS Algorithm provided by GRASS v.info (grass7:v.info)
##'
##' @title QGIS algorithm v.info
##'
##' @param map `source` - Name of input vector map. Path to a vector layer.
##' @param .c `boolean` - Print types/names of table columns for specified layer instead of info. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .g `boolean` - Print map region only. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .e `boolean` - Print extended metadata info in shell script style. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .t `boolean` - Print topology information only. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param html `fileDestination` - Information report. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Information report
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_info <- function(map = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .g = qgisprocess::qgis_default_value(), .e = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:v.info",`map` = map, `-c` = .c, `-g` = .g, `-e` = .e, `-t` = .t, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}