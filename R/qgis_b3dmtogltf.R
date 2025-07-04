##' QGIS Algorithm provided by QGIS (native c++) Convert B3DM to GLTF (native:b3dmtogltf). Converts files from the legacy B3DM format to GLTF. This algorithm converts files from the legacy B3DM format to GLTF.
##'
##' @title QGIS algorithm - Convert B3DM to GLTF
##'
##' @param INPUT `file` - Input B3DM. Path to a file.
##' @param OUTPUT `fileDestination` - Output file. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Output file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_b3dmtogltf <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:b3dmtogltf")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:b3dmtogltf", `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:b3dmtogltf", `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}