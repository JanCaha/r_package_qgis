##' QGIS Algorithm provided by GRASS i.cluster (grass7:i.cluster)
##'
##' @title QGIS algorithm i.cluster
##'
##' @param input `multilayer` - Input rasters. .
##' @param classes `number` - Initial number of classes (1-255). A numeric value.
##' @param seed `file` - Name of file containing initial signatures. Path to a file.
##' @param sample `string` - Sampling intervals (by row and col). String value.
##' @param iterations `number` - Maximum number of iterations. A numeric value.
##' @param convergence `number` - Percent convergence. A numeric value.
##' @param separation `number` - Cluster separation. A numeric value.
##' @param min_size `number` - Minimum number of pixels in a class. A numeric value.
##' @param signaturefile `fileDestination` - Signature File. Path for new file.
##' @param reportfile `fileDestination` - Final Report File. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * reportfile - outputFile - Final Report File
##' * signaturefile - outputFile - Signature File
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_cluster <- function(input = qgisprocess::qgis_default_value(), classes = qgisprocess::qgis_default_value(), seed = qgisprocess::qgis_default_value(), sample = qgisprocess::qgis_default_value(), iterations = qgisprocess::qgis_default_value(), convergence = qgisprocess::qgis_default_value(), separation = qgisprocess::qgis_default_value(), min_size = qgisprocess::qgis_default_value(), signaturefile = qgisprocess::qgis_default_value(), reportfile = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:i.cluster")

  output <- qgisprocess::qgis_run_algorithm("grass7:i.cluster", `input` = input, `classes` = classes, `seed` = seed, `sample` = sample, `iterations` = iterations, `convergence` = convergence, `separation` = separation, `min_size` = min_size, `signaturefile` = signaturefile, `reportfile` = reportfile, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "reportfile")
  }
}