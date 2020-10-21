character(0)

saga_gridcombination <- function(INPUT = qgisprocess::qgis_default_value(), Folder1 = qgisprocess::qgis_default_value(), sY = qgisprocess::qgis_default_value(), eY = qgisprocess::qgis_default_value(), DomW = qgisprocess::qgis_default_value(), ElecW = qgisprocess::qgis_default_value(), LiveW = qgisprocess::qgis_default_value(), ManW = qgisprocess::qgis_default_value(), IrrW = qgisprocess::qgis_default_value(), FvA = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:gridcombination",`INPUT` = INPUT, `Folder1` = Folder1, `sY` = sY, `eY` = eY, `DomW` = DomW, `ElecW` = ElecW, `LiveW` = LiveW, `ManW` = ManW, `IrrW` = IrrW, `FvA` = FvA,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}