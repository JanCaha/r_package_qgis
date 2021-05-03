##' QGIS Algorithm provided by SAGA Variogram surface (saga:variogramsurface)
##'
##' @title QGIS algorithm Variogram surface
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param DISTCOUNT `number` - Number of Distance Classes. A numeric value.
##' @param NSKIP `number` - Skip Number. A numeric value.
##' @param COUNT `rasterDestination` - Number of Pairs. Path for new raster layer.
##' @param VARIANCE `rasterDestination` - Variogram Surface. Path for new raster layer.
##' @param COVARIANCE `rasterDestination` - Covariance Surface. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * COUNT - outputRaster - Number of Pairs
##' * VARIANCE - outputRaster - Variogram Surface
##' * COVARIANCE - outputRaster - Covariance Surface
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_variogramsurface <- function(POINTS = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), DISTCOUNT = qgisprocess::qgis_default_value(), NSKIP = qgisprocess::qgis_default_value(), COUNT = qgisprocess::qgis_default_value(), VARIANCE = qgisprocess::qgis_default_value(), COVARIANCE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:variogramsurface")

  output <- qgisprocess::qgis_run_algorithm("saga:variogramsurface", `POINTS` = POINTS, `FIELD` = FIELD, `DISTCOUNT` = DISTCOUNT, `NSKIP` = NSKIP, `COUNT` = COUNT, `VARIANCE` = VARIANCE, `COVARIANCE` = COVARIANCE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "COUNT")
  }
}