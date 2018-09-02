## INSTALL THESE DEPENDENCIES
install.packages("devtools",
                 dependencies = TRUE,
                 repos='http://cran.us.r-project.org')
install.packages("Rcpp",
                 dependencies = TRUE,
                 repos='http://cran.us.r-project.org')

## Update two packages not on CRAN using the devtools package.
devtools::install_github(repo = 'geneorama/geneorama')
devtools::install_github(repo = 'yihui/printr')

## Update to RSocrata 1.7.2-2 (or later) 
## which is only on github as of March 8, 2016
devtools::install_github(repo = 'chicago/RSocrata')

## deps for parts 20's and 30's
install.packages('data.table')
install.packages('glmnet')
install.packages('ggplot2')
install.packages('randomForest')
install.packages('ROCR')
