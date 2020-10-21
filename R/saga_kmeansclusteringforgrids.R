##' QGIS Algorithm provided by SAGA K-means clustering for grids (saga:kmeansclusteringforgrids)
##'
##' @title QGIS algorithm K-means clustering for grids
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param METHOD `enum`  of `("[0] Iterative Minimum Distance (Forgy 1965)", "[1] Hill-Climbing (Rubin 1967)", "[2] Combined Minimum Distance / Hillclimbing")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NCLUSTER `number` - Clusters. A numeric value.
##' @param MAXITER `number` - Maximum Iterations. A numeric value.
##' @param NORMALISE `boolean` - Normalise. 1 for true/yes. 0 for false/no.
##' @param OLDVERSION `boolean` - Old Version. 1 for true/yes. 0 for false/no.
##' @param UPDATEVIEW `boolean` - Update View. 1 for true/yes. 0 for false/no.
##' @param CLUSTER `rasterDestination` - Clusters. Path for new raster layer.
##' @param STATISTICS `vectorDestination` - Statistics. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLUSTER - outputRaster - Clusters
##' * STATISTICS - outputVector - Statistics
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_kmeansclusteringforgrids <- function(GRIDS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NCLUSTER = qgisprocess::qgis_default_value(), MAXITER = qgisprocess::qgis_default_value(), NORMALISE = qgisprocess::qgis_default_value(), OLDVERSION = qgisprocess::qgis_default_value(), UPDATEVIEW = qgisprocess::qgis_default_value(), CLUSTER = qgisprocess::qgis_default_value(), STATISTICS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:kmeansclusteringforgrids",`GRIDS` = GRIDS, `METHOD` = METHOD, `NCLUSTER` = NCLUSTER, `MAXITER` = MAXITER, `NORMALISE` = NORMALISE, `OLDVERSION` = OLDVERSION, `UPDATEVIEW` = UPDATEVIEW, `CLUSTER` = CLUSTER, `STATISTICS` = STATISTICS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLUSTER")
  }
}