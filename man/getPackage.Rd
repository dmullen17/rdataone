% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MNode.R
\docType{methods}
\name{getPackage}
\alias{getPackage}
\alias{getPackage,MNode-method}
\title{Download a data package from a member node.}
\usage{
getPackage(x, ...)

\S4method{getPackage}{MNode}(x, identifier, format = "application/bagit-097")
}
\arguments{
\item{x}{A MNode instance representing a DataONE Member Node repository.}

\item{...}{(not yet used)}

\item{identifier}{The identifier of the package to retrieve. The identifier can be for the
resource map, metadata file, data file, or any other package member.}

\item{format}{The format to send the package in.}
}
\value{
The location of the package file downloaded from the member node.
}
\description{
Given a valid identifier, download a file containing all of the package 
members of the corresponding DataONE data package.
}
\details{
The default data package file format is a Bagit file (\url{https://tools.ietf.org/html/draft-kunze-bagit-09}).
The downloaded package file is compressed using the ZIP format and will be located in an R session temporary
file. Other packaging formats can be requested if they have been implemented by the requested member node.
}
\examples{
\dontrun{
mn <- getMNode(cn, "urn:node:KNB")
cn <- CNode()
mn <- getMNode(cn, "urn:node:KNB")
packageFileName <- getPackage(mn, id="resourceMap_Blandy.76.2")
}
}
\seealso{
\code{\link[=MNode-class]{MNode}}{ class description.}
}
