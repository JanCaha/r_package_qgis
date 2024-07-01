##' QGIS Algorithm provided by GRASS r.in.lidar.info (grass:r.in.lidar.info). r.in.lidar.info - Extract information from LAS file
##'
##' @title QGIS algorithm - r.in.lidar.info
##'
##' @param input `file` - LAS input file. Path to a file.
##' @param html `fileDestination` - LAS information. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - LAS information
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_in_lidar_info <- function(input = qgisprocess:::qgis_default_value(), html = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.in.lidar.info")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.in.lidar.info", `input` = input, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.in.lidar.info", `input` = input, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "html")
  }
}