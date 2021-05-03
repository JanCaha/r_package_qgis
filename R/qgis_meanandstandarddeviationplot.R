##' QGIS Algorithm provided by QGIS Mean and standard deviation plot (qgis:meanandstandarddeviationplot)
##'
##' @title QGIS algorithm Mean and standard deviation plot
##'
##' @param INPUT `source` - Input table. Path to a vector layer.
##' @param NAME_FIELD `field` - Category name field. The name of an existing field. ; delimited list of existing field names.
##' @param VALUE_FIELD `field` - Value field. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `fileDestination` - Plot. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputHtml - Plot
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_meanandstandarddeviationplot <- function(INPUT = qgisprocess::qgis_default_value(), NAME_FIELD = qgisprocess::qgis_default_value(), VALUE_FIELD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("qgis:meanandstandarddeviationplot")

  output <- qgisprocess::qgis_run_algorithm("qgis:meanandstandarddeviationplot", `INPUT` = INPUT, `NAME_FIELD` = NAME_FIELD, `VALUE_FIELD` = VALUE_FIELD, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}