##' QGIS Algorithm provided by SAGA Decision tree classification (opencv) (saga:decisiontreeclassificationopencv)
##'
##' @title QGIS algorithm Decision tree classification (opencv)
##'
##' @param FEATURES `multilayer` - Features. .
##' @param NORMALIZE `boolean` - Normalize. 1 for true/yes. 0 for false/no.
##' @param TRAIN_AREAS `source` - Training Areas. Path to a vector layer.
##' @param TRAIN_CLASS `source` - Class Identifier. Path to a vector layer.
##' @param CLASSES `rasterDestination` - Classification. Path for new raster layer.
##' @param MAX_DEPTH `number` - Maximum Tree Depth. A numeric value.
##' @param MIN_SAMPLES `number` - Minimum Sample Count. A numeric value.
##' @param MAX_CATEGRS `number` - Maximum Categories. A numeric value.
##' @param arg_1SE_RULE `boolean` - Use 1SE Rule. 1 for true/yes. 0 for false/no. Original algorithm parameter name: 1SE_RULE.
##' @param TRUNC_PRUNED `boolean` - Truncate Pruned Trees. 1 for true/yes. 0 for false/no.
##' @param REG_ACCURACY `number` - Regression Accuracy. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputRaster - Classification
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_decisiontreeclassificationopencv <- function(FEATURES = qgisprocess::qgis_default_value(), NORMALIZE = qgisprocess::qgis_default_value(), TRAIN_AREAS = qgisprocess::qgis_default_value(), TRAIN_CLASS = qgisprocess::qgis_default_value(), CLASSES = qgisprocess::qgis_default_value(), MAX_DEPTH = qgisprocess::qgis_default_value(), MIN_SAMPLES = qgisprocess::qgis_default_value(), MAX_CATEGRS = qgisprocess::qgis_default_value(), arg_1SE_RULE = qgisprocess::qgis_default_value(), TRUNC_PRUNED = qgisprocess::qgis_default_value(), REG_ACCURACY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:decisiontreeclassificationopencv")

  output <- qgisprocess::qgis_run_algorithm("saga:decisiontreeclassificationopencv", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `TRAIN_AREAS` = TRAIN_AREAS, `TRAIN_CLASS` = TRAIN_CLASS, `CLASSES` = CLASSES, `MAX_DEPTH` = MAX_DEPTH, `MIN_SAMPLES` = MIN_SAMPLES, `MAX_CATEGRS` = MAX_CATEGRS, `1SE_RULE` = arg_1SE_RULE, `TRUNC_PRUNED` = TRUNC_PRUNED, `REG_ACCURACY` = REG_ACCURACY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASSES")
  }
}