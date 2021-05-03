##' QGIS Algorithm provided by GRASS r.in.lidar.info (grass7:r.in.lidar.info)
##'
##' @title QGIS algorithm r.in.lidar.info
##'
##' @param input `file` - LAS input file. Path to a file.
##' @param html `fileDestination` - LAS information. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - LAS information
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_in_lidar_info <- function(input = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.in.lidar.info")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.in.lidar.info",`input` = input, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}