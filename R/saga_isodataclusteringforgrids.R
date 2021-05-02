##' QGIS Algorithm provided by SAGA Isodata clustering for grids (saga:isodataclusteringforgrids)
##'
##' @title QGIS algorithm Isodata clustering for grids
##'
##' @param FEATURES `multilayer` - Features. .
##' @param CLUSTER `rasterDestination` - Clusters. Path for new raster layer.
##' @param STATISTICS `source` - Statistics. Path to a vector layer.
##' @param NORMALIZE `boolean` - Normalize. 1 for true/yes. 0 for false/no.
##' @param ITERATIONS `number` - Maximum Number of Iterations. A numeric value.
##' @param CLUSTER_INI `number` - Initial Number of Clusters. A numeric value.
##' @param CLUSTER_MAX `number` - Maximum Number of Clusters. A numeric value.
##' @param SAMPLES_MIN `number` - Minimum Number of Samples in a Cluster. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLUSTER - outputRaster - Clusters
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_isodataclusteringforgrids <- function(FEATURES = qgisprocess::qgis_default_value(), CLUSTER = qgisprocess::qgis_default_value(), STATISTICS = qgisprocess::qgis_default_value(), NORMALIZE = qgisprocess::qgis_default_value(), ITERATIONS = qgisprocess::qgis_default_value(), CLUSTER_INI = qgisprocess::qgis_default_value(), CLUSTER_MAX = qgisprocess::qgis_default_value(), SAMPLES_MIN = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:isodataclusteringforgrids")
  output <- qgisprocess::qgis_run_algorithm("saga:isodataclusteringforgrids",`FEATURES` = FEATURES, `CLUSTER` = CLUSTER, `STATISTICS` = STATISTICS, `NORMALIZE` = NORMALIZE, `ITERATIONS` = ITERATIONS, `CLUSTER_INI` = CLUSTER_INI, `CLUSTER_MAX` = CLUSTER_MAX, `SAMPLES_MIN` = SAMPLES_MIN,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLUSTER")
  }
}