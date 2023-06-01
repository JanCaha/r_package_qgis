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
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * signaturefile - outputFile - Signature File
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_i_gensigset <- function(trainingmap = qgisprocess:::qgis_default_value(), input = qgisprocess:::qgis_default_value(), maxsig = qgisprocess:::qgis_default_value(), signaturefile = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:i.gensigset")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:i.gensigset", `trainingmap` = trainingmap, `input` = input, `maxsig` = maxsig, `signaturefile` = signaturefile, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:i.gensigset", `trainingmap` = trainingmap, `input` = input, `maxsig` = maxsig, `signaturefile` = signaturefile, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "signaturefile")
  }
}