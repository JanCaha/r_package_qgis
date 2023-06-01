##' QGIS Algorithm provided by SAGA Normal bayes classification (opencv) (saga:normalbayesclassificationopencv)
##'
##' @title QGIS algorithm Normal bayes classification (opencv)
##'
##' @param FEATURES `multilayer` - Features. .
##' @param NORMALIZE `boolean` - Normalize. 1 for true/yes. 0 for false/no.
##' @param PROBABILITY `rasterDestination` - Probability. Path for new raster layer.
##' @param TRAIN_AREAS `source` - Training Areas. Path to a vector layer.
##' @param TRAIN_CLASS `source` - Class Identifier. Path to a vector layer.
##' @param CLASSES `rasterDestination` - Classification. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputRaster - Classification
##' * PROBABILITY - outputRaster - Probability
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_normalbayesclassificationopencv <- function(FEATURES = qgisprocess:::qgis_default_value(), NORMALIZE = qgisprocess:::qgis_default_value(), PROBABILITY = qgisprocess:::qgis_default_value(), TRAIN_AREAS = qgisprocess:::qgis_default_value(), TRAIN_CLASS = qgisprocess:::qgis_default_value(), CLASSES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:normalbayesclassificationopencv")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:normalbayesclassificationopencv", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `PROBABILITY` = PROBABILITY, `TRAIN_AREAS` = TRAIN_AREAS, `TRAIN_CLASS` = TRAIN_CLASS, `CLASSES` = CLASSES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:normalbayesclassificationopencv", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `PROBABILITY` = PROBABILITY, `TRAIN_AREAS` = TRAIN_AREAS, `TRAIN_CLASS` = TRAIN_CLASS, `CLASSES` = CLASSES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLASSES")
  }
}