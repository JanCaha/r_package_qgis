##' QGIS Algorithm provided by SAGA K-nearest neighbours classification (opencv) (saga:knearestneighboursclassificationopencv)
##'
##' @title QGIS algorithm K-nearest neighbours classification (opencv)
##'
##' @param FEATURES `multilayer` - Features. .
##' @param NORMALIZE `boolean` - Normalize. 1 for true/yes. 0 for false/no.
##' @param TRAIN_AREAS `source` - Training Areas. Path to a vector layer.
##' @param TRAIN_CLASS `source` - Class Identifier. Path to a vector layer.
##' @param CLASSES `rasterDestination` - Classification. Path for new raster layer.
##' @param NEIGHBOURS `number` - Default Number of Neighbours. A numeric value.
##' @param TRAINING `enum`  of `("[0] classification", "[1] regression model")` - Training Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ALGORITHM `enum`  of `("[0] brute force", "[1] KD Tree")` - Algorithm Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EMAX `number` - Parameter for KD Tree implementation. A numeric value.
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

saga_knearestneighboursclassificationopencv <- function(FEATURES = qgisprocess::qgis_default_value(), NORMALIZE = qgisprocess::qgis_default_value(), TRAIN_AREAS = qgisprocess::qgis_default_value(), TRAIN_CLASS = qgisprocess::qgis_default_value(), CLASSES = qgisprocess::qgis_default_value(), NEIGHBOURS = qgisprocess::qgis_default_value(), TRAINING = qgisprocess::qgis_default_value(), ALGORITHM = qgisprocess::qgis_default_value(), EMAX = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:knearestneighboursclassificationopencv")

  output <- qgisprocess::qgis_run_algorithm("saga:knearestneighboursclassificationopencv", `FEATURES` = FEATURES, `NORMALIZE` = NORMALIZE, `TRAIN_AREAS` = TRAIN_AREAS, `TRAIN_CLASS` = TRAIN_CLASS, `CLASSES` = CLASSES, `NEIGHBOURS` = NEIGHBOURS, `TRAINING` = TRAINING, `ALGORITHM` = ALGORITHM, `EMAX` = EMAX,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASSES")
  }
}