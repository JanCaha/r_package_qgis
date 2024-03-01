##' QGIS Algorithm provided by GRASS g.extension.list (grass:g.extension.list). g.extension.list - List GRASS addons.
##'
##' @title QGIS algorithm - g.extension.list
##'
##' @param list `enum`  of `("Locally installed extensions", "Extensions available in the official GRASS GIS Addons repository", "Extensions available in the official GRASS GIS Addons repository including module description")` - List. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param html `fileDestination` - List of addons. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - List of addons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_g_extension_list <- function(list = qgisprocess:::qgis_default_value(), html = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:g.extension.list")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:g.extension.list", `list` = list, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:g.extension.list", `list` = list, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "html")
  }
}