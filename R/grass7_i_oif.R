##' QGIS Algorithm provided by GRASS i.oif (grass7:i.oif)
##'
##' @title QGIS algorithm i.oif
##'
##' @param input `multilayer` - Name of input raster map(s). .
##' @param .g `boolean` - Print in shell script style. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -g.
##' @param .s `boolean` - Process bands serially (default: run in parallel). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
##' @param output `fileDestination` - OIF File. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - OIF File
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_oif <- function(input = qgisprocess::qgis_default_value(), .g = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:i.oif")

  output <- qgisprocess::qgis_run_algorithm("grass7:i.oif", `input` = input, `-g` = .g, `-s` = .s, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}