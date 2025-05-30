% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getProjectsCM.R
\name{getProjectsCM}
\alias{getProjectsCM}
\title{Get ClimMob projects}
\usage{
getProjectsCM(key, server = "climmob3", ...)
}
\arguments{
\item{key}{character, the user's API key}

\item{server}{character, to indicate from which server the data will be retrieved. See details}

\item{...}{additional arguments passed to methods. See details}
}
\value{
A data.frame with the variables:
\item{project_id}{the ClimMob single id in the server database}
\item{project_code}{the project's code from the ClimMob user}
\item{project_name}{the project's name}
\item{user_owner}{the account name that owns the project}
\item{country}{the country of project's implementation}
\item{status}{the current status}
\item{creation_date}{date where the project was created}
}
\description{
Fetch the status of ClimMob projects
}
\details{
\code{server}: the default server is "climmob" used for clients of 
\url{https://climmob.net/climmob3/}, other options are:

 "1000farms" for clients of \url{https://1000farms.climmob.net/}
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# This function only works with an API key
# the API key can be obtained from your ClimMob account

my_key = "ff05a174-28d0-4a40-ab5a-35dc486133a6"

getProjectsCM(key = my_key, server = "1000FARMS")
\dontshow{\}) # examplesIf}
}
\seealso{
Other GET functions: 
\code{\link{getDataCM}()},
\code{\link{getProjectProgress}()}
}
\author{
Kauê de Sousa
}
\concept{GET functions}
