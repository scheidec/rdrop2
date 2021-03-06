% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drop_shared.R
\name{drop_share}
\alias{drop_share}
\title{Creates and returns a shared link to a file or folder.}
\usage{
drop_share(path = NULL, locale = NULL, short_url = TRUE,
  dtoken = get_dropbox_token())
}
\arguments{
\item{path}{This is required The path to the new folder to create relative to
root.}

\item{locale}{Dropbox uses the locale parameter to specify language settings
of content responses. If your app supports any language other than English,
insert the appropriate IETF language tag. When a supported language is
specified, Dropbox will returned translated size and/or user_error fields
(where applicable)}

\item{short_url}{By default the function return shortened URL. Set to \code{FALSE} if you require a full path.}

\item{dtoken}{The Dropbox token generated by \code{\link{drop_auth}}. rdrop2
will try to automatically locate your local credential cache and use them.
However, if the credentials are not found, the function will initiate a new
authentication request. You can override this in \code{\link{drop_auth}} by
pointing to a different location where your credentials are stored.}
}
\description{
Returns a list with the share \code{url}, \code{expires}, and \code{visibility}.
}
\examples{
\dontrun{
write.csv(mtcars, file = "mt.csv")
drop_upload("mt.csv")
drop_share("mt.csv")
}
}
