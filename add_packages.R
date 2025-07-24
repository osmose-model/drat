
where = "_own"
dependencies = "_dependencies"

nown   = dir(path=where)
nother = dir(path=dependencies)

all_contrib = dir(path="src/contrib")

own   = setdiff(nown, all_contrib)
other = setdiff(nother, all_contrib)

if(length(own)!=0) drat::insertPackages(file.path(where, own), ".")
if(length(other)!=0)  drat::insertPackages(file.path(dependencies, other), ".")

drat::updateRepo(".", type="source")

# install.packages("osmose", repo="https://osmose-model.github.io/drat/")
# install.packages("calibrar", repo="https://osmose-model.github.io/drat/")
# install.packages("lbfgsb3c", repo="https://osmose-model.github.io/drat/")
# install.packages("gts", repo="https://osmose-model.github.io/drat/")



