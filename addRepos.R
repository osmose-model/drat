library(drat)

options(dratBranch="master")

drat::insertPackage("../osmose_0.1.1.9001.zip", ".")
drat::insertPackage("../osmose_0.1.1.9001.tar.gz", ".")


install.packages("osmose", repo="https://osmose-model.github.io/drat/",
                 dependencies = TRUE)

