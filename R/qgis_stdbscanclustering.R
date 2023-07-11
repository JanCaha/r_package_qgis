##' QGIS Algorithm provided by QGIS (native c++) ST-DBSCAN clustering (native:stdbscanclustering). Clusters spatiotemporal point features using a time and density based scan algorithm. Clusters point features based on a 2D implementation of spatiotemporal density-based clustering of applications with noise (ST-DBSCAN) algorithm.  For more details, please see the following papers: * Ester, M., H. P. Kriegel, J. Sander, and X. Xu, "A Density-Based Algorithm for Discovering Clusters in Large Spatial Databases with Noise". In: Proceedings of the 2nd International Conference on Knowledge Discovery and Data Mining, Portland, OR, AAAI Press, pp. 226-231. 1996 * Birant, Derya, and Alp Kut. "ST-DBSCAN: An algorithm for clustering spatial–temporal data." Data & Knowledge Engineering 60.1 (2007): 208-221. * Peca, I., Fuchs, G., Vrotsou, K., Andrienko, N. V., & Andrienko, G. L. (2012). Scalable Cluster Analysis of Spatial Events. In EuroVA@ EuroVis.
##'
##' @title QGIS algorithm - ST-DBSCAN clustering
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DATETIME_FIELD `field` - Date\code{/}time field. The name of an existing field. ; delimited list of existing field names.
##' @param MIN_SIZE `number` - Minimum cluster size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EPS `distance` - Maximum distance between clustered points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EPS2 `duration` - Maximum time duration between clustered points. A numeric value (unit type set by algorithms). field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DBSCAN `boolean` - Treat border points as noise (DBSCAN*). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: DBSCAN*.
##' @param FIELD_NAME `string` - Cluster field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SIZE_FIELD_NAME `string` - Cluster size field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Clusters. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * NUM_CLUSTERS - outputNumber - Number of clusters
##' * OUTPUT - outputVector - Clusters
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_stdbscanclustering <- function(INPUT = qgisprocess:::qgis_default_value(), DATETIME_FIELD = qgisprocess:::qgis_default_value(), MIN_SIZE = qgisprocess:::qgis_default_value(), EPS = qgisprocess:::qgis_default_value(), EPS2 = qgisprocess:::qgis_default_value(), DBSCAN = qgisprocess:::qgis_default_value(), FIELD_NAME = qgisprocess:::qgis_default_value(), SIZE_FIELD_NAME = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:stdbscanclustering")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:stdbscanclustering", `INPUT` = INPUT, `DATETIME_FIELD` = DATETIME_FIELD, `MIN_SIZE` = MIN_SIZE, `EPS` = EPS, `EPS2` = EPS2, `DBSCAN*` = DBSCAN, `FIELD_NAME` = FIELD_NAME, `SIZE_FIELD_NAME` = SIZE_FIELD_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:stdbscanclustering", `INPUT` = INPUT, `DATETIME_FIELD` = DATETIME_FIELD, `MIN_SIZE` = MIN_SIZE, `EPS` = EPS, `EPS2` = EPS2, `DBSCAN*` = DBSCAN, `FIELD_NAME` = FIELD_NAME, `SIZE_FIELD_NAME` = SIZE_FIELD_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NUM_CLUSTERS")
  }
}