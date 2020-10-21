##' QGIS Algorithm provided by QGIS (native c++) K-means clustering (native:kmeansclustering)
##'
##' @title QGIS algorithm K-means clustering
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param CLUSTERS `number` - Number of clusters. A numeric value.
##' @param FIELD_NAME `string` - Cluster field name. String value.
##' @param OUTPUT `sink` - Clusters. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Clusters
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_kmeansclustering <- function(INPUT = qgisprocess::qgis_default_value(), CLUSTERS = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:kmeansclustering",`INPUT` = INPUT, `CLUSTERS` = CLUSTERS, `FIELD_NAME` = FIELD_NAME, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}