## Load packages

## Don't show those silly significanct stars
options(show.signif.stars=FALSE)

## Do you want to automatically convert strings to factor variables in a data.frame?
## WARNING!!! This makes your code less portable/reproducible.
options(stringsAsFactors=FALSE)


## Create a new invisible environment for all the functions to go in so it doesn't clutter your workspace.
.env <- new.env()

## Returns a logical vector TRUE for elements of X not in Y
.env$"%nin%" <- function(x, y) !(x %in% y) 

## Returns names(df) in single column, numbered matrix format.
.env$n <- function(df) matrix(names(df)) 

## Single character shortcuts for summary() and head().
.env$s <- base::summary
.env$h <- utils::head

## ht==headtail, i.e., show the first and last 10 items of an object
.env$ht <- function(d) rbind(head(d,10),tail(d,10))

## Show the first 5 rows and first 5 columns of a data frame or matrix
.env$hh <- function(d) if(class(d)=="matrix"|class(d)=="data.frame") d[1:5,1:5]

## Read data on clipboard.
.env$read.cb <- function(...) {
  ismac <- Sys.info()[1]=="Darwin"
  if (!ismac) read.table(file="clipboard", ...)
  else read.table(pipe("pbpaste"), ...)
}

## Strip row names from a data frame (stolen from plyr)
.env$unrowname <- function(x) {
    rownames(x) <- NULL
    x
}

## List objects and classes (from @_inundata, mod by ateucher)
#.env$lsa <- function() {
#{
#    obj_type <- function(x) class(get(x, envir = .GlobalEnv)) # define environment
#    foo = data.frame(sapply(ls(envir = .GlobalEnv), obj_type))
#    foo$object_name = rownames(foo)
#    names(foo)[1] = "class"
#    names(foo)[2] = "object"
#    return(unrowname(foo))
#}

## List all functions in a package (also from @_inundata)
.env$lsp <-function(package, all.names = FALSE, pattern) {
    package <- deparse(substitute(package))
    ls(
        pos = paste("package", package, sep = ":"),
        all.names = all.names,
        pattern = pattern
    )
}

## Open Finder to the current directory on mac
.env$macopen <- function(...) if(Sys.info()[1]=="Darwin") system("open .")
.env$o       <- function(...) if(Sys.info()[1]=="Darwin") system("open .")

## Attach all the variables above
attach(.env)



## .First() run at the start of every R session. 
## Use to load commonly used packages? 
.First <- function() {
#	library(ggplot2)
#	library(latex2exp)
	cat("\n \tHello Albz \n \t.Rprofile successfully loaded \t", date(), "\n")
}

## .Last() run at the end of the session
.Last <- function() {
	# save command history here?
	cat("\ngoodbye ", date(), "\n")
}


