##' QGIS Algorithm provided by QGIS Concave hull (k-nearest neighbor) (qgis:knearestconcavehull). Creates a concave hull using the k-nearest neighbor algorithm. This algorithm generates a concave hull polygon from a set of points. If the input layer is a line or polygon layer, it will use the nodes. The number of neighbours to consider determines the concaveness of the output polygon. A lower number will result in a concave hull that follows the points very closely, while a higher number will have a smoother shape. The minimum number of neighbour points to consider is 3. A value equal to or greater than the number of points will result in a convex hull. If a field is selected, the algorithm will group the features in the input layer using unique values in that field and generate individual polygons in the output layer for each group.
##'
##' @title QGIS algorithm - Concave hull (k-nearest neighbor)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param KNEIGHBORS `number` - Number of neighboring points to consider (a lower number is more concave, a higher number is smoother). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIELD `field` - Field (set if creating concave hulls by class). The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Concave hull. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Concave hull
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_knearestconcavehull <- function(INPUT = qgisprocess:::qgis_default_value(), KNEIGHBORS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:knearestconcavehull")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:knearestconcavehull", `INPUT` = INPUT, `KNEIGHBORS` = KNEIGHBORS, `FIELD` = FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:knearestconcavehull", `INPUT` = INPUT, `KNEIGHBORS` = KNEIGHBORS, `FIELD` = FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}