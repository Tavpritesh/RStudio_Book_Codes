dataplot <- function(dat){
name <- sys.call()[[2]]
vars <- as.list(names(dat))
e <- new.env()
e$data <- name
manipulate(
{
form=as.formula(paste(y,x,sep="~"))
plot(form, data=dat, main=as.character(name), las=1)
e$form <- form
},
x=do.call(picker, c(vars, initial=vars[1])),
y=do.call(picker, c(vars, initial=vars[2]))
)
invisible(e)
}