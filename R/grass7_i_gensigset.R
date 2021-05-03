##' QGIS Algorithm provided by GRASS i.gensigset (grass7:i.gensigset)
##'
##' @title QGIS algorithm i.gensigset
##'
##' @param trainingmap `raster` - Ground truth training map. Path to a raster layer.
##' @param input `multilayer` - Input rasters. .
##' @param maxsig `number` - Maximum number of sub-signatures in any class. A numeric value.
##' @param signaturefile `fileDestination` - Signature File. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * signaturefile - outputFile - Signature File
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_gensigset <- function(trainingmap = qgisprocess::qgis_default_value(), input = qgisprocess::qgis_default_value(), maxsig = qgisprocess::qgis_default_value(), signaturefile = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:i.gensigset")
  output <- qgisprocess::qgis_run_algorithm("grass7:i.gensigset",`trainingmap` = trainingmap, `input` = input, `maxsig` = maxsig, `signaturefile` = signaturefile, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "signaturefile")
  }
}