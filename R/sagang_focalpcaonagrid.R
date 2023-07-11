##' QGIS Algorithm provided by SAGA Next Gen Focal pca on a grid (sagang:focalpcaonagrid). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BASE: Base Topographies 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PCA: Principal Components 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer EIGEN: Eigen Vectors 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer COMPONENTS: Number of Components 	Default value:	7 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BASE_OUT: Output of Base Topographies 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OVERWRITE: Overwrite Previous Results 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL_TYPE: Kernel Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_RADIUS: Kernel Radius 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) correlation matrix 		- 1: (1) variance-covariance matrix 		- 2: (2) sums-of-squares-and-cross-products matrix 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Focal pca on a grid
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param BASE `rasterDestination` - Base Topographies. Path for new raster layer.
##' @param PCA `rasterDestination` - Principal Components. Path for new raster layer.
##' @param EIGEN `vectorDestination` - Eigen Vectors. Path for new vector layer.
##' @param COMPONENTS `number` - Number of Components. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BASE_OUT `boolean` - Output of Base Topographies. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OVERWRITE `boolean` - Overwrite Previous Results. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL_TYPE `enum`  of `("(0) Square", "(1) Circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_RADIUS `number` - Kernel Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) correlation matrix", "(1) variance-covariance matrix", "(2) sums-of-squares-and-cross-products matrix")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BASE - outputRaster - Base Topographies
##' * EIGEN - outputVector - Eigen Vectors
##' * PCA - outputRaster - Principal Components
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_focalpcaonagrid <- function(GRID = qgisprocess:::qgis_default_value(), BASE = qgisprocess:::qgis_default_value(), PCA = qgisprocess:::qgis_default_value(), EIGEN = qgisprocess:::qgis_default_value(), COMPONENTS = qgisprocess:::qgis_default_value(), BASE_OUT = qgisprocess:::qgis_default_value(), OVERWRITE = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_RADIUS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:focalpcaonagrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:focalpcaonagrid", `GRID` = GRID, `BASE` = BASE, `PCA` = PCA, `EIGEN` = EIGEN, `COMPONENTS` = COMPONENTS, `BASE_OUT` = BASE_OUT, `OVERWRITE` = OVERWRITE, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:focalpcaonagrid", `GRID` = GRID, `BASE` = BASE, `PCA` = PCA, `EIGEN` = EIGEN, `COMPONENTS` = COMPONENTS, `BASE_OUT` = BASE_OUT, `OVERWRITE` = OVERWRITE, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BASE")
  }
}