## ---- eval=FALSE--------------------------------------------------------------
#  # install packages necessary to build the package code
#  source("./build-package/install_save_deps.R")
#  
#  # install dependencies for the package
#  remotes::install_deps(dependencies = TRUE)
#  
#  # update package description
#  source("./build-package/update_Description.R")
#  
#  # build the package code and documentation
#  # this takes rather long time (roughly 22 minutes for basic QGIS installation)
#  source("./build-package/build_QGIS_functions.R")
#  
#  # check and install the package
#  devtools::check()
#  devtools::install()

