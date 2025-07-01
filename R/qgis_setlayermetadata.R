##' QGIS Algorithm provided by QGIS (native c++) Set layer metadata (native:setlayermetadata). Applies the metadata from a QMD file to a layer. This algorithm applies the metadata to a layer. The metadata must be defined as QMD file.  Any existing metadata in the layer will be replaced.
##'
##' @title QGIS algorithm - Set layer metadata
##'
##' @param INPUT `layer` - Layer. Path to a vector, raster or mesh layer.
##' @param METADATA `file` - Metadata file. Path to a file.
##' @param DEFAULT `boolean` - Save metadata as default. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputLayer - Updated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_setlayermetadata <- function(INPUT = qgisprocess:::qgis_default_value(), METADATA = qgisprocess:::qgis_default_value(), DEFAULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:setlayermetadata")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:setlayermetadata", `INPUT` = INPUT, `METADATA` = METADATA, `DEFAULT` = DEFAULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:setlayermetadata", `INPUT` = INPUT, `METADATA` = METADATA, `DEFAULT` = DEFAULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}