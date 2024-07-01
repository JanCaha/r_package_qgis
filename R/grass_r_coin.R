##' QGIS Algorithm provided by GRASS r.coin (grass:r.coin). Tabulates the mutual occurrence (coincidence) of categories for two raster map layers.
##'
##' @title QGIS algorithm - r.coin
##'
##' @param first `raster` - Name of first raster map. Path to a raster layer.
##' @param second `raster` - Name of second raster map. Path to a raster layer.
##' @param units `enum`  of `("c", "p", "x", "y", "a", "h", "k", "m")` - Unit of measure. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .w `boolean` - Wide report, 132 columns (default: 80). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -w.
##' @param html `fileDestination` - Coincidence report. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Coincidence report
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_coin <- function(first = qgisprocess:::qgis_default_value(), second = qgisprocess:::qgis_default_value(), units = qgisprocess:::qgis_default_value(), .w = qgisprocess:::qgis_default_value(), html = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.coin")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.coin", `first` = first, `second` = second, `units` = units, `-w` = .w, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.coin", `first` = first, `second` = second, `units` = units, `-w` = .w, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "html")
  }
}