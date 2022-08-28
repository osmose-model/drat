
where = "_own"
dependencies = "_dependencies"

nown   = dir(path=where)
nother = dir(path=dependencies)

all_contrib = dir(path="src/contrib")

own   = setdiff(nown, all_contrib)
other = setdiff(nother, all_contrib)

if(length(own)!=0) drat::insertPackages(file.path(where, own), ".")
if(length(dependencies)!=0)  drat::insertPackages(file.path(dependencies, other), ".")

# install.packages("osmose", repo="https://osmose-model.github.io/drat/")
# install.packages("calibrar", repo="https://osmose-model.github.io/drat/")

