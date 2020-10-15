##' QGIS Algorithm provided by SAGA Rgb composite (saga:rgbcomposite)
##'
##' @title QGIS algorithm Rgb composite
##'
##' @param R_GRID `raster` - R. Path to a raster layer.
##' @param G_GRID `raster` - G. Path to a raster layer.
##' @param B_GRID `raster` - B. Path to a raster layer.
##' @param R_METHOD `enum`  of `("0 - 255", "Rescale to 0 - 255", "User defined rescale", "Percentiles", "Percentage of standard deviation")` - Method for R value. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param G_METHOD `enum`  of `("0 - 255", "Rescale to 0 - 255", "User defined rescale", "Percentiles", "Percentage of standard deviation")` - Method for G value. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param B_METHOD `enum`  of `("0 - 255", "Rescale to 0 - 255", "User defined rescale", "Percentiles", "Percentage of standard deviation")` - Method for B value. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param R_RANGE_MIN `number` - Rescale Range for RED min. A numeric value.
##' @param R_RANGE_MAX `number` - Rescale Range for RED max. A numeric value.
##' @param R_PERCTL_MIN `number` - Percentiles Range for RED max. A numeric value.
##' @param R_PERCTL_MAX `number` - Percentiles Range for RED max. A numeric value.
##' @param R_STDDEV `number` - Standard deviation for RED. A numeric value.
##' @param G_RANGE_MIN `number` - Rescale Range for GREEN min. A numeric value.
##' @param G_RANGE_MAX `number` - Rescale Range for GREEN max. A numeric value.
##' @param G_PERCTL_MIN `number` - Percentiles Range for GREEN max. A numeric value.
##' @param G_PERCTL_MAX `number` - Percentiles Range for GREEN max. A numeric value.
##' @param G_STDDEV `number` - Standard deviation for GREEN. A numeric value.
##' @param B_RANGE_MIN `number` - Rescale Range for BLUE min. A numeric value.
##' @param B_RANGE_MAX `number` - Rescale Range for BLUE max. A numeric value.
##' @param B_PERCTL_MIN `number` - Percentiles Range for BLUE max. A numeric value.
##' @param B_PERCTL_MAX `number` - Percentiles Range for BLUE max. A numeric value.
##' @param B_STDDEV `number` - Standard deviation for BLUE. A numeric value.
##' @param RGB `rasterDestination` - Output RGB. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RGB - outputRaster - Output RGB
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rgbcomposite <- function(R_GRID = qgisprocess::qgis_default_value(), G_GRID = qgisprocess::qgis_default_value(), B_GRID = qgisprocess::qgis_default_value(), R_METHOD = qgisprocess::qgis_default_value(), G_METHOD = qgisprocess::qgis_default_value(), B_METHOD = qgisprocess::qgis_default_value(), R_RANGE_MIN = qgisprocess::qgis_default_value(), R_RANGE_MAX = qgisprocess::qgis_default_value(), R_PERCTL_MIN = qgisprocess::qgis_default_value(), R_PERCTL_MAX = qgisprocess::qgis_default_value(), R_STDDEV = qgisprocess::qgis_default_value(), G_RANGE_MIN = qgisprocess::qgis_default_value(), G_RANGE_MAX = qgisprocess::qgis_default_value(), G_PERCTL_MIN = qgisprocess::qgis_default_value(), G_PERCTL_MAX = qgisprocess::qgis_default_value(), G_STDDEV = qgisprocess::qgis_default_value(), B_RANGE_MIN = qgisprocess::qgis_default_value(), B_RANGE_MAX = qgisprocess::qgis_default_value(), B_PERCTL_MIN = qgisprocess::qgis_default_value(), B_PERCTL_MAX = qgisprocess::qgis_default_value(), B_STDDEV = qgisprocess::qgis_default_value(), RGB = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:rgbcomposite",`R_GRID` = R_GRID, `G_GRID` = G_GRID, `B_GRID` = B_GRID, `R_METHOD` = R_METHOD, `G_METHOD` = G_METHOD, `B_METHOD` = B_METHOD, `R_RANGE_MIN` = R_RANGE_MIN, `R_RANGE_MAX` = R_RANGE_MAX, `R_PERCTL_MIN` = R_PERCTL_MIN, `R_PERCTL_MAX` = R_PERCTL_MAX, `R_STDDEV` = R_STDDEV, `G_RANGE_MIN` = G_RANGE_MIN, `G_RANGE_MAX` = G_RANGE_MAX, `G_PERCTL_MIN` = G_PERCTL_MIN, `G_PERCTL_MAX` = G_PERCTL_MAX, `G_STDDEV` = G_STDDEV, `B_RANGE_MIN` = B_RANGE_MIN, `B_RANGE_MAX` = B_RANGE_MAX, `B_PERCTL_MIN` = B_PERCTL_MIN, `B_PERCTL_MAX` = B_PERCTL_MAX, `B_STDDEV` = B_STDDEV, `RGB` = RGB,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RGB")
}
}