##' QGIS Algorithm provided by GRASS r.gwflow (grass7:r.gwflow)
##'
##' @title QGIS algorithm r.gwflow
##'
##' @param phead `raster` - The initial piezometric head in (m). Path to a raster layer.
##' @param status `raster` - Boundary condition status, 0-inactive, 1-active, 2-dirichlet. Path to a raster layer.
##' @param hc_x `raster` - X-part of the hydraulic conductivity tensor in (m/s). Path to a raster layer.
##' @param hc_y `raster` - Y-part of the hydraulic conductivity tensor in (m/s). Path to a raster layer.
##' @param q `raster` - Water sources and sinks in (m^3/s). Path to a raster layer.
##' @param s `raster` - Specific yield in (1/m). Path to a raster layer.
##' @param recharge `raster` - Recharge map e.g: 6*10^-9 per cell in (m^3/s*m^2). Path to a raster layer.
##' @param top `raster` - Top surface of the aquifer in (m). Path to a raster layer.
##' @param bottom `raster` - Bottom surface of the aquifer in (m). Path to a raster layer.
##' @param type `enum`  of `("confined", "unconfined")` - The type of groundwater flow. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param river_bed `raster` - The height of the river bed in (m). Path to a raster layer.
##' @param river_head `raster` - Water level (head) of the river with leakage connection in (m). Path to a raster layer.
##' @param river_leak `raster` - The leakage coefficient of the river bed in (1/s). Path to a raster layer.
##' @param drain_bed `raster` - The height of the drainage bed in (m). Path to a raster layer.
##' @param drain_leak `raster` - The leakage coefficient of the drainage bed in (1/s). Path to a raster layer.
##' @param dtime `number` - The calculation time in seconds. A numeric value.
##' @param maxit `number` - Maximum number of iteration used to solver the linear equation system. A numeric value.
##' @param error `number` - Error break criteria for iterative solvers (jacobi, sor, cg or bicgstab). A numeric value.
##' @param solver `enum`  of `("cg", "pcg", "cholesky")` - The type of solver which should solve the symmetric linear equation system. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param relax `string` - The relaxation parameter used by the jacobi and sor solver for speedup or stabilizing. String value.
##' @param .f `boolean` - Allocate a full quadratic linear equation system, default is a sparse linear equation system. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -f.
##' @param output `rasterDestination` - Groundwater flow. Path for new raster layer.
##' @param vx `rasterDestination` - Groundwater filter velocity vector part in x direction (m/s). Path for new raster layer.
##' @param vy `rasterDestination` - Groundwater filter velocity vector part in y direction (m/s). Path for new raster layer.
##' @param budget `rasterDestination` - Groundwater budget for each cell (m^3/s). Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * budget - outputRaster - Groundwater budget for each cell (m^3/s)
##' * output - outputRaster - Groundwater flow
##' * vx - outputRaster - Groundwater filter velocity vector part in x direction (m/s)
##' * vy - outputRaster - Groundwater filter velocity vector part in y direction (m/s)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_gwflow <- function(phead = qgisprocess::qgis_default_value(), status = qgisprocess::qgis_default_value(), hc_x = qgisprocess::qgis_default_value(), hc_y = qgisprocess::qgis_default_value(), q = qgisprocess::qgis_default_value(), s = qgisprocess::qgis_default_value(), recharge = qgisprocess::qgis_default_value(), top = qgisprocess::qgis_default_value(), bottom = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), river_bed = qgisprocess::qgis_default_value(), river_head = qgisprocess::qgis_default_value(), river_leak = qgisprocess::qgis_default_value(), drain_bed = qgisprocess::qgis_default_value(), drain_leak = qgisprocess::qgis_default_value(), dtime = qgisprocess::qgis_default_value(), maxit = qgisprocess::qgis_default_value(), error = qgisprocess::qgis_default_value(), solver = qgisprocess::qgis_default_value(), relax = qgisprocess::qgis_default_value(), .f = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), vx = qgisprocess::qgis_default_value(), vy = qgisprocess::qgis_default_value(), budget = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.gwflow")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.gwflow", `phead` = phead, `status` = status, `hc_x` = hc_x, `hc_y` = hc_y, `q` = q, `s` = s, `recharge` = recharge, `top` = top, `bottom` = bottom, `type` = type, `river_bed` = river_bed, `river_head` = river_head, `river_leak` = river_leak, `drain_bed` = drain_bed, `drain_leak` = drain_leak, `dtime` = dtime, `maxit` = maxit, `error` = error, `solver` = solver, `relax` = relax, `-f` = .f, `output` = output, `vx` = vx, `vy` = vy, `budget` = budget, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.gwflow", `phead` = phead, `status` = status, `hc_x` = hc_x, `hc_y` = hc_y, `q` = q, `s` = s, `recharge` = recharge, `top` = top, `bottom` = bottom, `type` = type, `river_bed` = river_bed, `river_head` = river_head, `river_leak` = river_leak, `drain_bed` = drain_bed, `drain_leak` = drain_leak, `dtime` = dtime, `maxit` = maxit, `error` = error, `solver` = solver, `relax` = relax, `-f` = .f, `output` = output, `vx` = vx, `vy` = vy, `budget` = budget, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "budget")
  }
}