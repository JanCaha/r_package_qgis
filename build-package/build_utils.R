function_check_QGIS_versions <- function(){

  qgis_build_version <- stringr::str_match(qgisprocess::qgis_version(), "[0-9.]+[[:cntrl:][:alnum:]]")[,1]

  fn_code <- glue::glue("check_QGIS_versions <- function(){{\n",
                        "  qgis_build <- \"{qgis_build_version}\"\n",
                        "  qgis_local <- stringr::str_match(qgisprocess::qgis_version(), \"[0-9.]+[[:cntrl:][:alnum:]]\")[,1]\n",
                        "  if (compareVersion(qgis_local, qgis_build) < 0) {{\n",
                        "    message(glue::glue(\"The QGIS version running localy ({{qgis_local}}) is older then the QGIS version against which the package was build ({{qgis_build}}).\"))\n",
                        "  }}\n",
                        "}}")
}

readr::write_file(glue::glue_collapse(list(function_check_QGIS_versions()),
                                      sep = "\n\n"),
                  glue::glue("./R/utils.R"))
