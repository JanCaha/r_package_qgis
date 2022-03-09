##' QGIS Algorithm provided by GRASS r.transect (grass7:r.transect)
##'
##' @title QGIS algorithm r.transect
##'
##' @param map `raster` - Raster map to be queried. Path to a raster layer.
##' @param line `string` - Transect definition: east,north,azimuth,distance(,east,north,azimuth,distance,...). String value.
##' @param null_value `string` - String representing NULL value. String value.
##' @param .g `boolean` - Output easting and northing in first two columns of four column output. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -g.
##' @param html `fileDestination` - Transect file. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Transect file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_transect <- function(map = qgisprocess::qgis_default_value(), line = qgisprocess::qgis_default_value(), null_value = qgisprocess::qgis_default_value(), .g = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.transect")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.transect", `map` = map, `line` = line, `null_value` = null_value, `-g` = .g, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.transect", `map` = map, `line` = line, `null_value` = null_value, `-g` = .g, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}