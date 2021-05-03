#' @importFrom glue glue
#' @importFrom stringr str_match
#' @importFrom utils compareVersion

.onLoad <- function(libname, pkgname){{

  if (!qgisprocess::assert_qgis()){
    stop("Cannot load package `qgis` because working QGIS installation cannot be found. See help for `qgisprocess::qgis_configure()`!")
  }

  qgis_build <- "{qgis_build_version}"

  qgis_local <- stringr::str_match(qgisprocess::qgis_version(), "[0-9.]+[[:cntrl:][:alnum:]]")[,1]

  if (utils::compareVersion(qgis_local, qgis_build) < 0) {{
    packageStartupMessage(glue::glue("The QGIS version running localy ({{qgis_local}}) is older then the QGIS version against which the package was build ({{qgis_build}}). Errors and inconsistencies may occur! Consider downloading lates stable version of QGIS."))
  }}
}}
