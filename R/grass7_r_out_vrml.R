##' QGIS Algorithm provided by GRASS r.out.vrml (grass7:r.out.vrml)
##'
##' @title QGIS algorithm r.out.vrml
##'
##' @param elevation `raster` - Elevation layer. Path to a raster layer.
##' @param color `raster` - Color layer. Path to a raster layer.
##' @param exaggeration `number` - Vertical exaggeration. A numeric value.
##' @param output `fileDestination` - VRML. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - VRML
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_out_vrml <- function(elevation = qgisprocess::qgis_default_value(), color = qgisprocess::qgis_default_value(), exaggeration = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.out.vrml")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.out.vrml",`elevation` = elevation, `color` = color, `exaggeration` = exaggeration, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}