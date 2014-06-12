require(knitr)
abalone<-read.csv("abalone.csv")
table(abalone$Sex)
plot(Length~Sex,data=abalone)
adMillion<-function(x)
{
  x <- x+10^6
}