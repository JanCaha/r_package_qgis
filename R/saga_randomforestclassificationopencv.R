##' QGIS Algorithm provided by SAGA Random forest classification (opencv) (saga:randomforestclassificationopencv)
##'
##' @title QGIS algorithm Random forest classification (opencv)
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
##' @param ACTIVE_VARS `number` - Active Variable Count. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputRaster - Classification
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_randomforestclassificationopencv <- function(FEATURES = qgisprocess::qgis_default_value(), NORMALIZE = qgisprocess::qgis_default_value(), TRAIN_AREAS = qgisprocess::qgis_default_value(), TRAIN_CLASS = qgisprocess::qgis_default_value(), CLASSES = qgisprocess::qgis_default_value(), MAX_DEPTH = qgisprocess::qgis_default_value(), MIN_SAMPLES = qgisprocess::qgis_default_value(), MAX_CATEGRS = qgisprocess::qgis_default_value(), arg_1SE_RULE = qgisprocess::qgis_default_value(), TRUNC_PRUNED = qgisprocess::qgis_default_value(), REG_ACCURACY = qgisprocess::qgis_default_value(), ACTIVE_VARS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:randomforestclassificationopencv")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:randomforestclassificationopencv", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `TRAIN_AREAS` = TRAIN_AREAS, `TRAIN_CLASS` = TRAIN_CLASS, `CLASSES` = CLASSES, `MAX_DEPTH` = MAX_DEPTH, `MIN_SAMPLES` = MIN_SAMPLES, `MAX_CATEGRS` = MAX_CATEGRS, `1SE_RULE` = arg_1SE_RULE, `TRUNC_PRUNED` = TRUNC_PRUNED, `REG_ACCURACY` = REG_ACCURACY, `ACTIVE_VARS` = ACTIVE_VARS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:randomforestclassificationopencv", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `TRAIN_AREAS` = TRAIN_AREAS, `TRAIN_CLASS` = TRAIN_CLASS, `CLASSES` = CLASSES, `MAX_DEPTH` = MAX_DEPTH, `MIN_SAMPLES` = MIN_SAMPLES, `MAX_CATEGRS` = MAX_CATEGRS, `1SE_RULE` = arg_1SE_RULE, `TRUNC_PRUNED` = TRUNC_PRUNED, `REG_ACCURACY` = REG_ACCURACY, `ACTIVE_VARS` = ACTIVE_VARS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASSES")
  }
}