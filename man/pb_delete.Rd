% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pb_delete.R
\name{pb_delete}
\alias{pb_delete}
\title{Delete an asset attached to a release}
\usage{
pb_delete(
  file = NULL,
  repo = guess_repo(),
  tag = "latest",
  .token = gh::gh_token()
)
}
\arguments{
\item{file}{file(s) to be deleted from the release. If \code{NULL} (default
when argument is omitted), function will delete all attachments to the release.
delete}

\item{repo}{Repository name in format "owner/repo". Defaults to \code{guess_repo()}.}

\item{tag}{tag for the GitHub release to which this data should be attached.}

\item{.token}{GitHub authentication token, see \verb{[gh::gh_token()]}}
}
\value{
\code{TRUE} (invisibly) if a file is found and deleted.
Otherwise, returns \code{NULL} (invisibly) if no file matching the name was found.
}
\description{
Delete an asset attached to a release
}
\examples{
\dontrun{
readr::write_tsv(mtcars, "mtcars.tsv.gz")
## Upload
pb_upload("mtcars.tsv.gz",
          repo = "cboettig/piggyback-tests",
          overwrite = TRUE)
pb_delete("mtcars.tsv.gz",
          repo = "cboettig/piggyback-tests",
          tag = "v0.0.1")
}

}
