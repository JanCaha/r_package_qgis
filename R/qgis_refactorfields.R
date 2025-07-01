##' QGIS Algorithm provided by QGIS (native c++) Refactor fields (native:refactorfields). Allows editing the structure of the attributes table of a vector layer, permitting field renaming, creation and deletion. This algorithm allows editing the structure of the attributes table of a vector layer. Fields can be modified in their type and name, using a fields mapping.  The original layer is not modified. A new layer is generated, which contains a modified attribute table, according to the provided fields mapping.  Rows in orange have constraints in the template layer from which these fields were loaded. Treat this information as a hint during configuration. No constraints will be added on an output layer nor will they be checked or enforced by the algorithm.
##'
##' @title QGIS algorithm - Refactor fields
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELDS_MAPPING `fields_mapping` - Fields mapping. .
##' @param OUTPUT `sink` - Refactored. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Refactored
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_refactorfields <- function(INPUT = qgisprocess:::qgis_default_value(), FIELDS_MAPPING = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:refactorfields")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:refactorfields", `INPUT` = INPUT, `FIELDS_MAPPING` = FIELDS_MAPPING, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:refactorfields", `INPUT` = INPUT, `FIELDS_MAPPING` = FIELDS_MAPPING, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}