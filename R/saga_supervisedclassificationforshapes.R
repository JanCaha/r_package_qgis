##' QGIS Algorithm provided by SAGA Supervised classification for shapes (saga:supervisedclassificationforshapes)
##'
##' @title QGIS algorithm Supervised classification for shapes
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param CLASSES `vectorDestination` - Classification. Path for new vector layer.
##' @param FEATURES `source` - Features. Path to a vector layer.
##' @param NORMALISE `boolean` - Normalise. 1 for true/yes. 0 for false/no.
##' @param TRAINING `source` - Training Classes. Path to a vector layer.
##' @param FILE_LOAD `file` - Load Statistics from File.... Path to a file.
##' @param FILE_SAVE `file` - Save Statistics to File.... Path to a file.
##' @param METHOD `enum`  of `("[0] Binary Encoding", "[1] Parallelepiped", "[2] Minimum Distance", "[3] Mahalanobis Distance", "[4] Maximum Likelihood", "[5] Spectral Angle Mapping", "[6] Winner Takes All")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param THRESHOLD_DIST `number` - Distance Threshold. A numeric value.
##' @param THRESHOLD_ANGLE `number` - Spectral Angle Threshold (Degree). A numeric value.
##' @param THRESHOLD_PROB `number` - Probability Threshold. A numeric value.
##' @param RELATIVE_PROB `enum`  of `("[0] absolute", "[1] relative")` - Probability Reference. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param WTA_0 `boolean` - Binary Encoding. 1 for true/yes. 0 for false/no.
##' @param WTA_1 `boolean` - Parallelepiped. 1 for true/yes. 0 for false/no.
##' @param WTA_2 `boolean` - Minimum Distance. 1 for true/yes. 0 for false/no.
##' @param WTA_3 `boolean` - Mahalanobis Distance. 1 for true/yes. 0 for false/no.
##' @param WTA_4 `boolean` - Maximum Likelihood. 1 for true/yes. 0 for false/no.
##' @param WTA_5 `boolean` - Spectral Angle Mapping. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputVector - Classification
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_supervisedclassificationforshapes <- function(SHAPES = qgisprocess::qgis_default_value(), CLASSES = qgisprocess::qgis_default_value(), FEATURES = qgisprocess::qgis_default_value(), NORMALISE = qgisprocess::qgis_default_value(), TRAINING = qgisprocess::qgis_default_value(), FILE_LOAD = qgisprocess::qgis_default_value(), FILE_SAVE = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), THRESHOLD_DIST = qgisprocess::qgis_default_value(), THRESHOLD_ANGLE = qgisprocess::qgis_default_value(), THRESHOLD_PROB = qgisprocess::qgis_default_value(), RELATIVE_PROB = qgisprocess::qgis_default_value(), WTA_0 = qgisprocess::qgis_default_value(), WTA_1 = qgisprocess::qgis_default_value(), WTA_2 = qgisprocess::qgis_default_value(), WTA_3 = qgisprocess::qgis_default_value(), WTA_4 = qgisprocess::qgis_default_value(), WTA_5 = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:supervisedclassificationforshapes")
  output <- qgisprocess::qgis_run_algorithm("saga:supervisedclassificationforshapes",`SHAPES` = SHAPES, `CLASSES` = CLASSES, `FEATURES` = FEATURES, `NORMALISE` = NORMALISE, `TRAINING` = TRAINING, `FILE_LOAD` = FILE_LOAD, `FILE_SAVE` = FILE_SAVE, `METHOD` = METHOD, `THRESHOLD_DIST` = THRESHOLD_DIST, `THRESHOLD_ANGLE` = THRESHOLD_ANGLE, `THRESHOLD_PROB` = THRESHOLD_PROB, `RELATIVE_PROB` = RELATIVE_PROB, `WTA_0` = WTA_0, `WTA_1` = WTA_1, `WTA_2` = WTA_2, `WTA_3` = WTA_3, `WTA_4` = WTA_4, `WTA_5` = WTA_5,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASSES")
  }
}