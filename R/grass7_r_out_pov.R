##' QGIS Algorithm provided by GRASS r.out.pov (grass7:r.out.pov)
##'
##' @title QGIS algorithm r.out.pov
##'
##' @param input `raster` - Input raster. Path to a raster layer.
##' @param hftype `number` - Height-field type (0=actual heights 1=normalized). A numeric value.
##' @param bias `number` - Elevation bias. A numeric value.
##' @param scale `number` - Vertical scaling factor. A numeric value.
##' @param output `fileDestination` - Name of output povray file (TGA height field file). Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Name of output povray file 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_out_pov <- function(input = qgisprocess::qgis_default_value(), hftype = qgisprocess::qgis_default_value(), bias = qgisprocess::qgis_default_value(), scale = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.out.pov")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.out.pov",`input` = input, `hftype` = hftype, `bias` = bias, `scale` = scale, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}