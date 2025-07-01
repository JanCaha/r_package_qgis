##' QGIS Algorithm provided by QGIS (native c++) Copy layer metadata (native:copylayermetadata). Copies the metadata from one layer to another. This algorithm copies metadata from a source layer to a target layer.  Any existing metadata in the target layer will be replaced.
##'
##' @title QGIS algorithm - Copy layer metadata
##'
##' @param SOURCE `layer` - Source layer. Path to a vector, raster or mesh layer.
##' @param TARGET `layer` - Target layer. Path to a vector, raster or mesh layer.
##' @param DEFAULT `boolean` - Save metadata as default. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputLayer - Updated layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_copylayermetadata <- function(SOURCE = qgisprocess:::qgis_default_value(), TARGET = qgisprocess:::qgis_default_value(), DEFAULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:copylayermetadata")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:copylayermetadata", `SOURCE` = SOURCE, `TARGET` = TARGET, `DEFAULT` = DEFAULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:copylayermetadata", `SOURCE` = SOURCE, `TARGET` = TARGET, `DEFAULT` = DEFAULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}