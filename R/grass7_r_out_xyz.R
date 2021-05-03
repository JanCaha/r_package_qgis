##' QGIS Algorithm provided by GRASS r.out.xyz (grass7:r.out.xyz)
##'
##' @title QGIS algorithm r.out.xyz
##'
##' @param input `multilayer` - Input raster(s). .
##' @param separator `string` - Field separator. String value.
##' @param .i `boolean` - Include no data values. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -i.
##' @param output `fileDestination` - XYZ File. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - XYZ File
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_out_xyz <- function(input = qgisprocess::qgis_default_value(), separator = qgisprocess::qgis_default_value(), .i = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.out.xyz")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.out.xyz", `input` = input, `separator` = separator, `-i` = .i, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}