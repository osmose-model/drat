
# set to the lastest version in DATARMOR :'(
.libPaths("C:/R/R-3.6.3/library")
scratch = "_dependencies"

if(!dir.exists(scratch)) dir.create(scratch)
  
# install all the packages locally, so we know what we need
install.packages("calibrar", destdir=scratch, type="source")
install.packages("osmose",  destdir=scratch, type="source")
# installing two extra dependencies that are not in the CRAN versions
install.packages("optimr",  destdir=scratch, type="source")
install.packages("fields",  destdir=scratch, type="source")

# remove CRAN versions of calibrar and osmose
calibrar = dir(path=scratch, pattern="calibrar")
osmose   = dir(path=scratch, pattern="osmose")
file.remove(file.path(scratch, calibrar))
file.remove(file.path(scratch, osmose))
