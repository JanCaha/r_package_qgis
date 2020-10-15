##' QGIS Algorithm provided by SAGA Principle components analysis (saga:principlecomponentsanalysis)
##'
##' @title QGIS algorithm Principle components analysis
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param METHOD `enum`  of `("[0] correlation matrix", "[1] variance-covariance matrix", "[2] sums-of-squares-and-cross-products matrix")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NFIRST `number` - Number of Components. A numeric value.
##' @param PCA `vectorDestination` - Principle Components. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PCA - outputVector - Principle Components
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_principlecomponentsanalysis <- function(TABLE = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NFIRST = qgisprocess::qgis_default_value(), PCA = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:principlecomponentsanalysis",`TABLE` = TABLE, `METHOD` = METHOD, `NFIRST` = NFIRST, `PCA` = PCA,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PCA")
}
}