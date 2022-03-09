##' QGIS Algorithm provided by SAGA Add indicator fields for categories (saga:addindicatorfieldsforcategories)
##'
##' @title QGIS algorithm Add indicator fields for categories
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param FIELD `field` - Categories. The name of an existing field. ; delimited list of existing field names.
##' @param OUT_TABLE `source` - Output table with field(s) deleted. Path to a vector layer.
##' @param OUT_SHAPES `vectorDestination` - Output shapes with field(s) deleted. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUT_SHAPES - outputVector - Output shapes with field(s) deleted
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_addindicatorfieldsforcategories <- function(TABLE = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), OUT_TABLE = qgisprocess::qgis_default_value(), OUT_SHAPES = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:addindicatorfieldsforcategories")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:addindicatorfieldsforcategories", `TABLE` = TABLE, `FIELD` = FIELD, `OUT_TABLE` = OUT_TABLE, `OUT_SHAPES` = OUT_SHAPES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:addindicatorfieldsforcategories", `TABLE` = TABLE, `FIELD` = FIELD, `OUT_TABLE` = OUT_TABLE, `OUT_SHAPES` = OUT_SHAPES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUT_SHAPES")
  }
}