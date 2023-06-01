##' QGIS Algorithm provided by GRASS r.what.coords (grass7:r.what.coords)
##'
##' @title QGIS algorithm r.what.coords
##'
##' @param map `raster` - Name of raster map. Path to a raster layer.
##' @param coordinates `point` - Coordinates for query (east, north). Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param null_value `string` - String representing NULL value. String value.
##' @param separator `string` - Field separator. Special characters: pipe, comma, space, tab, newlineString representing NULL value. String value.
##' @param cache `number` - Size of point cache. A numeric value.
##' @param .n `boolean` - Output header row. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param .f `boolean` - Show the category labels of the grid cell(s). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -f.
##' @param .r `boolean` - Output color values as RRR:GGG:BBB. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param .i `boolean` - Output integer category values, not cell values. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -i.
##' @param .c `boolean` - Turn on cache reporting. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param output `fileDestination` - Raster Value File. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Raster Value File
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_what_coords <- function(map = qgisprocess:::qgis_default_value(), coordinates = qgisprocess:::qgis_default_value(), null_value = qgisprocess:::qgis_default_value(), separator = qgisprocess:::qgis_default_value(), cache = qgisprocess:::qgis_default_value(), .n = qgisprocess:::qgis_default_value(), .f = qgisprocess:::qgis_default_value(), .r = qgisprocess:::qgis_default_value(), .i = qgisprocess:::qgis_default_value(), .c = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.what.coords")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.what.coords", `map` = map, `coordinates` = coordinates, `null_value` = null_value, `separator` = separator, `cache` = cache, `-n` = .n, `-f` = .f, `-r` = .r, `-i` = .i, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.what.coords", `map` = map, `coordinates` = coordinates, `null_value` = null_value, `separator` = separator, `cache` = cache, `-n` = .n, `-f` = .f, `-r` = .r, `-i` = .i, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}