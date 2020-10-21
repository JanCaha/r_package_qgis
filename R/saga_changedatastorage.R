##' QGIS Algorithm provided by SAGA Change data storage (saga:changedatastorage)
##'
##' @title QGIS algorithm Change data storage
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Converted Grid. Path for new raster layer.
##' @param TYPE `enum`  of `("[0] bit", "[1] unsigned 1 byte integer", "[2] signed 1 byte integer", "[3] unsigned 2 byte integer", "[4] signed 2 byte integer", "[5] unsigned 4 byte integer", "[6] signed 4 byte integer", "[7] 4 byte floating point number", "[8] 8 byte floating point number")` - Data storage type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OFFSET `number` - Offset. A numeric value.
##' @param SCALE `number` - Scale. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Converted Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_changedatastorage <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), OFFSET = qgisprocess::qgis_default_value(), SCALE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:changedatastorage",`INPUT` = INPUT, `OUTPUT` = OUTPUT, `TYPE` = TYPE, `OFFSET` = OFFSET, `SCALE` = SCALE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}