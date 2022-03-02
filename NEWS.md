# qgis 1.13.0

* change version number system, the first three components are now identical to QGIS version used to build the package and the dev component indicates version of the package

* addition of .complete_output, .quiet and .messages to all the functions to allow control of what is printed to R console

* allow handling of the parameters, mentioned above, using R options: options(qgis.quiet = TRUE), options(qgis.messages = FALSE), options(qgis.complete_output = TRUE)

# qgis 1.0.0

* add checks to verify that QGIS is available and the selected algorithm exists (because local QGIS installation can vary from the QGIS installation used to build the package)

# qgis 0.17.0

* update qgis

# qgis 0.14.0

* add search to website

* change the build order so that version only changes if any R code actually changed

# qgis 0.13.0

* try to build website

# qgis 0.9.0

* add DESCRIPTION, LICENSE, LICENSE.md, .Rhistory to package-development branch

* changed development to its own branch
