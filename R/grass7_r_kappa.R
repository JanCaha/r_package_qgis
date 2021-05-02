##' QGIS Algorithm provided by GRASS r.kappa (grass7:r.kappa)
##'
##' @title QGIS algorithm r.kappa
##'
##' @param classification `raster` - Raster layer containing classification result. Path to a raster layer.
##' @param reference `raster` - Raster layer containing reference classes. Path to a raster layer.
##' @param title `string` - Title for error matrix and kappa. String value.
##' @param .h `boolean` - No header in the report. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -h.
##' @param .w `boolean` - Wide report (132 columns). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -w.
##' @param output `fileDestination` - Error matrix and kappa. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Error matrix and kappa
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_kappa <- function(classification = qgisprocess::qgis_default_value(), reference = qgisprocess::qgis_default_value(), title = qgisprocess::qgis_default_value(), .h = qgisprocess::qgis_default_value(), .w = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.kappa")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.kappa",`classification` = classification, `reference` = reference, `title` = title, `-h` = .h, `-w` = .w, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}