##' QGIS Algorithm provided by SAGA Next Gen Terrain clustering (sagang:terrainclustering). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CLUSTER: Clusters 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer NCLUSTER: Number of Terrain Classes 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAXITER: Maximum Iterations 	Default value:	25 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Terrain clustering
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param CLUSTER `rasterDestination` - Clusters. Path for new raster layer.
##' @param NCLUSTER `number` - Number of Terrain Classes. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXITER `number` - Maximum Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLUSTER - outputRaster - Clusters
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_terrainclustering <- function(ELEVATION = qgisprocess:::qgis_default_value(), CLUSTER = qgisprocess:::qgis_default_value(), NCLUSTER = qgisprocess:::qgis_default_value(), MAXITER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:terrainclustering")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:terrainclustering", `ELEVATION` = ELEVATION, `CLUSTER` = CLUSTER, `NCLUSTER` = NCLUSTER, `MAXITER` = MAXITER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:terrainclustering", `ELEVATION` = ELEVATION, `CLUSTER` = CLUSTER, `NCLUSTER` = NCLUSTER, `MAXITER` = MAXITER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLUSTER")
  }
}