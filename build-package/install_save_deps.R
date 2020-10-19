# install packages necessary to build the package code
install.packages(c("remotes", "desc", "glue", "readr", "purrr", "stringr", "here", "knitr", "rmarkdown", "devtools", "pkgdown"))
remotes::install_github("paleolimbot/qgisprocess")

# save files withe dependencies
saveRDS(remotes::dev_package_deps(dependencies = TRUE), ".github/depends.Rds", version = 2)
writeLines(sprintf("R-%i.%i", getRversion()$major, getRversion()$minor), ".github/R-version")
