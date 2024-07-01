##' QGIS Algorithm provided by GRASS r.distance (grass:r.distance). Locates the closest points between objects in two raster maps.
##'
##' @title QGIS algorithm - r.distance
##'
##' @param map `multilayer` - Name of two input raster for computing inter-class distances. .
##' @param separator `string` - Field separator (Special characters: pipe, comma, space, tab, newline). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param sort `enum`  of `("asc", "desc")` - Sort output by distance. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .l `boolean` - Include category labels in the output. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -l.
##' @param .o `boolean` - Report zero distance if rasters are overlapping. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -o.
##' @param .n `boolean` - Report null objects as *. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -n.
##' @param html `fileDestination` - Distance. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Distance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_distance <- function(map = qgisprocess:::qgis_default_value(), separator = qgisprocess:::qgis_default_value(), sort = qgisprocess:::qgis_default_value(), .l = qgisprocess:::qgis_default_value(), .o = qgisprocess:::qgis_default_value(), .n = qgisprocess:::qgis_default_value(), html = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.distance")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.distance", `map` = map, `separator` = separator, `sort` = sort, `-l` = .l, `-o` = .o, `-n` = .n, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.distance", `map` = map, `separator` = separator, `sort` = sort, `-l` = .l, `-o` = .o, `-n` = .n, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "html")
  }
}