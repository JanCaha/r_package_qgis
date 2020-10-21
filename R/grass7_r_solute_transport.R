##' QGIS Algorithm provided by GRASS r.solute.transport (grass7:r.solute.transport)
##'
##' @title QGIS algorithm r.solute.transport
##'
##' @param c `raster` - The initial concentration in (kg/m^3). Path to a raster layer.
##' @param phead `raster` - The piezometric head in (m). Path to a raster layer.
##' @param hc_x `raster` - The x-part of the hydraulic conductivity tensor in (m/s). Path to a raster layer.
##' @param hc_y `raster` - The y-part of the hydraulic conductivity tensor in (m/s). Path to a raster layer.
##' @param status `raster` - The status for each cell, = 0 - inactive cell, 1 - active cell, 2 - dirichlet- and 3 - transfer boundary condition. Path to a raster layer.
##' @param diff_x `raster` - The x-part of the diffusion tensor in (m^2/s). Path to a raster layer.
##' @param diff_y `raster` - The y-part of the diffusion tensor in (m^2/s). Path to a raster layer.
##' @param q `raster` - Groundwater sources and sinks in (m^3/s). Path to a raster layer.
##' @param cin `raster` - Concentration sources and sinks bounded to a water source or sink in (kg/s). Path to a raster layer.
##' @param cs `raster` - Concentration of inner sources and inner sinks in (kg/s) (i.e. a chemical reaction). Path to a raster layer.
##' @param rd `raster` - Retardation factor (-). Path to a raster layer.
##' @param nf `raster` - Effective porosity (-). Path to a raster layer.
##' @param top `raster` - Top surface of the aquifer in (m). Path to a raster layer.
##' @param bottom `raster` - Bottom surface of the aquifer in (m). Path to a raster layer.
##' @param dtime `number` - Calculation time (in seconds). A numeric value.
##' @param maxit `number` - Maximum number of iteration used to solve the linear equation system. A numeric value.
##' @param error `number` - Error break criteria for iterative solver. A numeric value.
##' @param solver `enum`  of `("gauss", "lu", "jacobi", "sor", "bicgstab")` - The type of solver which should solve the linear equation system. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param relax `number` - The relaxation parameter used by the jacobi and sor solver for speedup or stabilizing. A numeric value.
##' @param al `number` - The longitudinal dispersivity length. (m). A numeric value.
##' @param at `number` - The transversal dispersivity length. (m). A numeric value.
##' @param loops `number` - Use this number of time loops if the CFL flag is off. The timestep will become dt/loops.. A numeric value.
##' @param stab `enum`  of `("full", "exp")` - Set the flow stabilizing scheme (full or exponential upwinding).. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .c `boolean` - Use the Courant-Friedrichs-Lewy criteria for time step calculation. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .f `boolean` - Use a full filled quadratic linear equation system, default is a sparse linear equation system.. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param output `rasterDestination` - Solute Transport. Path for new raster layer.
##' @param vx `rasterDestination` - Calculate and store the groundwater filter velocity vector part in x direction (m/s). Path for new raster layer.
##' @param vy `rasterDestination` - Calculate and store the groundwater filter velocity vector part in y direction (m/s). Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Solute Transport
##' * vx - outputRaster - Calculate and store the groundwater filter velocity vector part in x direction 
##' * vy - outputRaster - Calculate and store the groundwater filter velocity vector part in y direction 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_solute_transport <- function(c = qgisprocess::qgis_default_value(), phead = qgisprocess::qgis_default_value(), hc_x = qgisprocess::qgis_default_value(), hc_y = qgisprocess::qgis_default_value(), status = qgisprocess::qgis_default_value(), diff_x = qgisprocess::qgis_default_value(), diff_y = qgisprocess::qgis_default_value(), q = qgisprocess::qgis_default_value(), cin = qgisprocess::qgis_default_value(), cs = qgisprocess::qgis_default_value(), rd = qgisprocess::qgis_default_value(), nf = qgisprocess::qgis_default_value(), top = qgisprocess::qgis_default_value(), bottom = qgisprocess::qgis_default_value(), dtime = qgisprocess::qgis_default_value(), maxit = qgisprocess::qgis_default_value(), error = qgisprocess::qgis_default_value(), solver = qgisprocess::qgis_default_value(), relax = qgisprocess::qgis_default_value(), al = qgisprocess::qgis_default_value(), at = qgisprocess::qgis_default_value(), loops = qgisprocess::qgis_default_value(), stab = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .f = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), vx = qgisprocess::qgis_default_value(), vy = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.solute.transport",`c` = c, `phead` = phead, `hc_x` = hc_x, `hc_y` = hc_y, `status` = status, `diff_x` = diff_x, `diff_y` = diff_y, `q` = q, `cin` = cin, `cs` = cs, `rd` = rd, `nf` = nf, `top` = top, `bottom` = bottom, `dtime` = dtime, `maxit` = maxit, `error` = error, `solver` = solver, `relax` = relax, `al` = al, `at` = at, `loops` = loops, `stab` = stab, `-c` = .c, `-f` = .f, `output` = output, `vx` = vx, `vy` = vy, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}