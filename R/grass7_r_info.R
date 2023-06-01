##' QGIS Algorithm provided by GRASS r.info (grass7:r.info)
##'
##' @title QGIS algorithm r.info
##'
##' @param map `raster` - Raster layer. Path to a raster layer.
##' @param .r `boolean` - Print range only. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param .g `boolean` - Print raster array information in shell script style. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -g.
##' @param .h `boolean` - Print raster history instead of info. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -h.
##' @param .e `boolean` - Print extended metadata information in shell script style. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.
##' @param html `fileDestination` - Basic information. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Basic information
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_info <- function(map = qgisprocess:::qgis_default_value(), .r = qgisprocess:::qgis_default_value(), .g = qgisprocess:::qgis_default_value(), .h = qgisprocess:::qgis_default_value(), .e = qgisprocess:::qgis_default_value(), html = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.info")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.info", `map` = map, `-r` = .r, `-g` = .g, `-h` = .h, `-e` = .e, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.info", `map` = map, `-r` = .r, `-g` = .g, `-h` = .h, `-e` = .e, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "html")
  }
}