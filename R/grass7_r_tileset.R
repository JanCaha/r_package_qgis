##' QGIS Algorithm provided by GRASS r.tileset (grass7:r.tileset). Produces tilings of the source projection for use in the destination region and projection.
##'
##' @title QGIS algorithm - r.tileset
##'
##' @param sourceproj `crs` - Source projection. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param sourcescale `number` - Conversion factor from units to meters in source projection. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param destproj `crs` - Destination projection. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param destscale `number` - Conversion factor from units to meters in destination projection. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param maxcols `number` - Maximum number of columns for a tile in the source projection. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param maxrows `number` - Maximum number of rows for a tile in the source projection. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param overlap `number` - Number of cells tiles should overlap in each direction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param separator `string` - Output field separator. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .g `boolean` - Produces shell script output. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -g.
##' @param .w `boolean` - Produces web map server query string output. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -w.
##' @param html `fileDestination` - Tileset. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Tileset
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_tileset <- function(sourceproj = qgisprocess:::qgis_default_value(), sourcescale = qgisprocess:::qgis_default_value(), destproj = qgisprocess:::qgis_default_value(), destscale = qgisprocess:::qgis_default_value(), maxcols = qgisprocess:::qgis_default_value(), maxrows = qgisprocess:::qgis_default_value(), overlap = qgisprocess:::qgis_default_value(), separator = qgisprocess:::qgis_default_value(), .g = qgisprocess:::qgis_default_value(), .w = qgisprocess:::qgis_default_value(), html = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.tileset")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.tileset", `sourceproj` = sourceproj, `sourcescale` = sourcescale, `destproj` = destproj, `destscale` = destscale, `maxcols` = maxcols, `maxrows` = maxrows, `overlap` = overlap, `separator` = separator, `-g` = .g, `-w` = .w, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.tileset", `sourceproj` = sourceproj, `sourcescale` = sourcescale, `destproj` = destproj, `destscale` = destscale, `maxcols` = maxcols, `maxrows` = maxrows, `overlap` = overlap, `separator` = separator, `-g` = .g, `-w` = .w, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "html")
  }
}