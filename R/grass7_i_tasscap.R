##' QGIS Algorithm provided by GRASS i.tasscap (grass7:i.tasscap)
##'
##' @title QGIS algorithm i.tasscap
##'
##' @param input `multilayer` - Input rasters. Landsat4-7: bands 1,2,3,4,5,7; Landsat8: bands 2,3,4,5,6,7; MODIS: bands 1,2,3,4,5,6,7. .
##' @param sensor `enum`  of `("landsat4_tm", "landsat5_tm", "landsat7_etm", "landsat8_oli", "modis")` - Satellite sensor. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param output `folderDestination` - Output Directory. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFolder - Output Directory
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_tasscap <- function(input = qgisprocess::qgis_default_value(), sensor = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:i.tasscap")
  output <- qgisprocess::qgis_run_algorithm("grass7:i.tasscap",`input` = input, `sensor` = sensor, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}