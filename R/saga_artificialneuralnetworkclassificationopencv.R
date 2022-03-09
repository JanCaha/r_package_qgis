##' QGIS Algorithm provided by SAGA Artificial neural network classification (opencv) (saga:artificialneuralnetworkclassificationopencv)
##'
##' @title QGIS algorithm Artificial neural network classification (opencv)
##'
##' @param FEATURES `multilayer` - Features. .
##' @param NORMALIZE `boolean` - Normalize. 1 for true/yes. 0 for false/no.
##' @param TRAIN_AREAS `source` - Training Areas. Path to a vector layer.
##' @param TRAIN_CLASS `source` - Class Identifier. Path to a vector layer.
##' @param CLASSES `rasterDestination` - Classification. Path for new raster layer.
##' @param ANN_LAYERS `number` - Number of Layers. A numeric value.
##' @param ANN_NEURONS `number` - Number of Neurons. A numeric value.
##' @param ANN_MAXITER `number` - Maximum Number of Iterations. A numeric value.
##' @param ANN_EPSILON `number` - Error Change (Epsilon). A numeric value.
##' @param ANN_ACTIVATION `enum`  of `("[0] Identity", "[1] Sigmoid", "[2] Gaussian")` - Activation Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ANN_ACT_ALPHA `number` - Function's Alpha. A numeric value.
##' @param ANN_ACT_BETA `number` - Function's Beta. A numeric value.
##' @param ANN_PROPAGATION `enum`  of `("[0] resilient propagation", "[1] back propagation")` - Training Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ANN_RP_DW0 `number` - Initial Update Value. A numeric value.
##' @param ANN_RP_DW_PLUS `number` - Increase Factor. A numeric value.
##' @param ANN_RP_DW_MINUS `number` - Decrease Factor. A numeric value.
##' @param ANN_RP_DW_MIN `number` - Lower Value Update Limit. A numeric value.
##' @param ANN_RP_DW_MAX `number` - Upper Value Update Limit. A numeric value.
##' @param ANN_BP_DW `number` - Weight Gradient Term. A numeric value.
##' @param ANN_BP_MOMENT `number` - Moment Term. A numeric value.
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

saga_artificialneuralnetworkclassificationopencv <- function(FEATURES = qgisprocess::qgis_default_value(), NORMALIZE = qgisprocess::qgis_default_value(), TRAIN_AREAS = qgisprocess::qgis_default_value(), TRAIN_CLASS = qgisprocess::qgis_default_value(), CLASSES = qgisprocess::qgis_default_value(), ANN_LAYERS = qgisprocess::qgis_default_value(), ANN_NEURONS = qgisprocess::qgis_default_value(), ANN_MAXITER = qgisprocess::qgis_default_value(), ANN_EPSILON = qgisprocess::qgis_default_value(), ANN_ACTIVATION = qgisprocess::qgis_default_value(), ANN_ACT_ALPHA = qgisprocess::qgis_default_value(), ANN_ACT_BETA = qgisprocess::qgis_default_value(), ANN_PROPAGATION = qgisprocess::qgis_default_value(), ANN_RP_DW0 = qgisprocess::qgis_default_value(), ANN_RP_DW_PLUS = qgisprocess::qgis_default_value(), ANN_RP_DW_MINUS = qgisprocess::qgis_default_value(), ANN_RP_DW_MIN = qgisprocess::qgis_default_value(), ANN_RP_DW_MAX = qgisprocess::qgis_default_value(), ANN_BP_DW = qgisprocess::qgis_default_value(), ANN_BP_MOMENT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:artificialneuralnetworkclassificationopencv")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:artificialneuralnetworkclassificationopencv", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `TRAIN_AREAS` = TRAIN_AREAS, `TRAIN_CLASS` = TRAIN_CLASS, `CLASSES` = CLASSES, `ANN_LAYERS` = ANN_LAYERS, `ANN_NEURONS` = ANN_NEURONS, `ANN_MAXITER` = ANN_MAXITER, `ANN_EPSILON` = ANN_EPSILON, `ANN_ACTIVATION` = ANN_ACTIVATION, `ANN_ACT_ALPHA` = ANN_ACT_ALPHA, `ANN_ACT_BETA` = ANN_ACT_BETA, `ANN_PROPAGATION` = ANN_PROPAGATION, `ANN_RP_DW0` = ANN_RP_DW0, `ANN_RP_DW_PLUS` = ANN_RP_DW_PLUS, `ANN_RP_DW_MINUS` = ANN_RP_DW_MINUS, `ANN_RP_DW_MIN` = ANN_RP_DW_MIN, `ANN_RP_DW_MAX` = ANN_RP_DW_MAX, `ANN_BP_DW` = ANN_BP_DW, `ANN_BP_MOMENT` = ANN_BP_MOMENT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:artificialneuralnetworkclassificationopencv", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `TRAIN_AREAS` = TRAIN_AREAS, `TRAIN_CLASS` = TRAIN_CLASS, `CLASSES` = CLASSES, `ANN_LAYERS` = ANN_LAYERS, `ANN_NEURONS` = ANN_NEURONS, `ANN_MAXITER` = ANN_MAXITER, `ANN_EPSILON` = ANN_EPSILON, `ANN_ACTIVATION` = ANN_ACTIVATION, `ANN_ACT_ALPHA` = ANN_ACT_ALPHA, `ANN_ACT_BETA` = ANN_ACT_BETA, `ANN_PROPAGATION` = ANN_PROPAGATION, `ANN_RP_DW0` = ANN_RP_DW0, `ANN_RP_DW_PLUS` = ANN_RP_DW_PLUS, `ANN_RP_DW_MINUS` = ANN_RP_DW_MINUS, `ANN_RP_DW_MIN` = ANN_RP_DW_MIN, `ANN_RP_DW_MAX` = ANN_RP_DW_MAX, `ANN_BP_DW` = ANN_BP_DW, `ANN_BP_MOMENT` = ANN_BP_MOMENT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASSES")
  }
}