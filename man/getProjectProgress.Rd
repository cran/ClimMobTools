% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getProjectProgress.R
\name{getProjectProgress}
\alias{getProjectProgress}
\title{Get project progress}
\usage{
getProjectProgress(key, project, userowner, server = "climmob3")
}
\arguments{
\item{key}{a character for the user's application programming 
interface (API) key}

\item{project}{a character for the project id}

\item{userowner}{a character for user name of project's owner}

\item{server}{optional, a character to select from which server
the data will be retrieved. See details}
}
\value{
A list with number of submissions per assessment and 
 submissions per assessment per enumerator
}
\description{
Fetch the progress of a ClimMob project
}
\details{
\code{server}: the default server is "climmob" used for clients of 
\url{https://climmob.net/climmob3/}, other options are:

 "1000farms" for clients of \url{https://1000farms.climmob.net/}
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# This function only works with an API key
# the API key can be obtained once a free ClimMob account
# is created via https://climmob.net/
 
library("ClimMobTools")
my_key <- "ff05a174-28d0-4a40-ab5a-35dc486133a6"

getProjectProgress(key = my_key,
                   project = "beanaru23",
                   userowner = "student",
                   server = "1000FARMS")

\dontshow{\}) # examplesIf}
}
\seealso{
ClimMob website \url{https://climmob.net/}

Other GET functions: 
\code{\link{getDataCM}()},
\code{\link{getProjectsCM}()}
}
\author{
Kauê de Sousa
}
\concept{GET functions}
