#!/usr/bin/env Rscript

# remove bibliography to make a build on travis possible (citeproc error)
system("sed -i '/bibliography:/d' ./index.Rmd")

bookdown::render_book("index.Rmd")
